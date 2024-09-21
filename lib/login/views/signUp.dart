import 'package:bookly/login/views/login.dart';
import 'package:bookly/login/widget/custom_default_button.dart';
import 'package:bookly/login/widget/custom_snack_bar.dart';
import 'package:bookly/login/widget/textandbutton.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:bookly/styles.dart';

class signUp extends StatefulWidget {
  const signUp({Key? key}) : super(key: key);

  @override
  State<signUp> createState() => _signUpState();
}

var formKey = GlobalKey<FormState>(); //

String? email;
String? password;
bool isloading = false;

class _signUpState extends State<signUp> {
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
                  padding: EdgeInsets.symmetric(vertical: 40),
                  child: Text(
                    "Sign Up",
                    style: styles.textStyle30
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                defaultTextField(
                  onchange: (data) {
                    email = data;
                  },
                  labelText: "First Name",
                  hintText: "Enter First Name",
                  type: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 20,
                ),
                defaultTextField(
                  onchange: (data) {
                    password = data;
                  },
                  labelText: "Last Name",
                  hintText: "Enter Last Name",
                  type: TextInputType.name,
                ),
                SizedBox(
                  height: 20,
                ),
                defaultTextField(
                  onchange: (data) {
                    password = data;
                  },
                  labelText: "Email",
                  hintText: "Enter Your Email",
                  type: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 20,
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
                SizedBox(
                  height: 20,
                ),
                defaultTextField(
                  isPassword: isPassword,
                  onchange: (data) {
                    password = data;
                  },
                  suffix: //العين
                      isPassword ? Icons.visibility_off : Icons.visibility,
                  labelText: "Confirm Password",
                  hintText: "Confirm Your Password",
                  type: TextInputType.name,
                ),
                SizedBox(
                  height: 40,
                ),
                CustomDefaultButton(
                  name: 'sign up',
                  ontap: () async {
                    if (formKey.currentState!.validate()) {
                      isloading = true;
                      setState(() {});
                      try {
                        await signupuser();
                        ShowBar(context, "Registration Successful");
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'badly formatted') {
                          ShowBar(
                              context, "The password provided is too weak.");
                        } else if (e.code == 'email-already-in-use') {
                          ShowBar(context,
                              "The account already exists for that email.");
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
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account ?",
                      style: styles.textStyle16.copyWith(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Sign In",
                        style: styles.textStyle16.copyWith(
                            fontWeight: FontWeight.normal, color: Colors.red),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> signupuser() async {
    UserCredential user =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email!,
      password: password!,
    );
  }
}
