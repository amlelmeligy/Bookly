import 'package:bookly/login/widget/custom_default_button.dart';
import 'package:bookly/login/widget/custom_icons.dart';
import 'package:bookly/login/widget/custom_snack_bar.dart';
import 'package:bookly/login/widget/textandbutton.dart';
import 'package:bookly/styles.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

GlobalKey<FormState> formKey = GlobalKey(); //

String? email;
String? password;
bool isloading = false;
bool isPassword = true;

TextEditingController emailConroller = TextEditingController();
TextEditingController PasswordConroller = TextEditingController();

class _loginState extends State<login> {
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isloading,
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(20),
          child: Form(
            key: formKey,
            child: ListView(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 50),
                  child: Text(
                    "Sign In",
                    style: styles.textStyle30
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                defaultTextField(
                  onchange: (data) {
                    email = data;
                  },
                  labelText: "Email",
                  hintText: "Enter Your Email",
                  type: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 35,
                ),
                defaultTextField(
                  isPassword: isPassword,
                  onchange: (data) {
                    password = data;
                  },
                  suffix: //العين
                      isPassword ? Icons.visibility_off : Icons.visibility,
                  labelText: "Password",
                  hintText: "Enter Your Password",
                  type: TextInputType.name,
                ),
                TextButton(
                  style: ButtonStyle(alignment: Alignment.centerRight),
                  onPressed: () {},
                  child: Text(
                    "Forget Password",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomDefaultButton(
                  name: 'Sign In',
                  ontap: () async {
                    if (formKey.currentState!.validate()) {
                      isloading = true;
                      setState(() {});

                      try {
                        await loginuser();

                        GoRouter.of(context).push("/Navigation");
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'user-not-found') {
                          ShowBar(context, "No user found for that email.");
                        } else if (e.code == 'wrong-password') {
                          ShowBar(context,
                              "Wrong password provided for that user.");
                        }
                      } catch (e) {
                        ShowBar(context, "An error occurred");
                      }
                      isloading = false;
                      setState(() {});
                    }
                  },
                ),
                SizedBox(
                  height: 120,
                ),
                Text(
                  "Or Sign In With",
                  textAlign: TextAlign.center,
                  style: styles.textStyle18.copyWith(
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                CustomIconList(),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account ?",
                      style: styles.textStyle16.copyWith(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        GoRouter.of(context).push("/signUp");
                      },
                      child: Text(
                        "Sign Up",
                        style: styles.textStyle16.copyWith(
                            fontWeight: FontWeight.normal, color: Colors.red),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> loginuser() async {
    UserCredential user =
        await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email!,
      password: password!,
    );
  }
}
