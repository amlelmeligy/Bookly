import 'package:bookly/login/widget/custom_default_button.dart';
import 'package:bookly/login/widget/custom_icons.dart';
import 'package:bookly/login/widget/custom_snack_bar.dart';
import 'package:bookly/login/widget/textandbutton.dart';
import 'package:bookly/styles.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

GlobalKey<FormState> formKey = GlobalKey(); //

String? email;
String? password;
bool isloading = false;
bool isPassword = true;

TextEditingController emailConroller = TextEditingController();
TextEditingController passwordConroller = TextEditingController();

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isloading,
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: formKey,
            child: ListView(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 50),
                  child: Text(
                    "Sign In",
                    style: Styles.textStyle30
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                DefaultTextField(
                  controller: emailConroller,
                  labelText: "Email",
                  hintText: "Enter Your Email",
                  type: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 35,
                ),
                DefaultTextField(
                  isPassword: isPassword,
                  controller: passwordConroller,
                  labelText: "Password",
                  hintText: "Enter Your Password",
                  type: TextInputType.name,
                ),
                TextButton(
                  style: const ButtonStyle(alignment: Alignment.centerRight),
                  onPressed: () {},
                  child: const Text(
                    "Forget Password",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                const SizedBox(
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
                          displayBar(context, "No user found for that email.");
                        } else if (e.code == 'wrong-password') {
                          displayBar(context,
                              "Wrong password provided for that user.");
                        }
                      } catch (e) {
                        displayBar(context, "An error occurred");
                      }
                      isloading = false;
                      setState(() {});
                    }
                  },
                ),
                const SizedBox(
                  height: 120,
                ),
                Text(
                  "Or Sign In With",
                  textAlign: TextAlign.center,
                  style: Styles.textStyle18.copyWith(
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomIconList(),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account ?",
                      style: Styles.textStyle16.copyWith(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        GoRouter.of(context).push("/signUp");
                      },
                      child: Text(
                        "Sign Up",
                        style: Styles.textStyle16.copyWith(
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
      email: emailConroller.text,
      password: passwordConroller.text,
    );
  }
}
