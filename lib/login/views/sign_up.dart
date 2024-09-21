import 'package:bookly/login/views/login.dart';
import 'package:bookly/login/widget/custom_default_button.dart';
import 'package:bookly/login/widget/custom_snack_bar.dart';
import 'package:bookly/login/widget/textandbutton.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:bookly/styles.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

var formKey = GlobalKey<FormState>(); //

String? email;
String? password;
bool isloading = false;
TextEditingController nameController = TextEditingController();
TextEditingController lastNameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController confirmPasswordController = TextEditingController();

class _SignUpState extends State<SignUp> {
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
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: Text(
                    "Sign Up",
                    style: Styles.textStyle30
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                DefaultTextField(
                  controller: nameController,
                  isPassword: false,
                  labelText: "First Name",
                  hintText: "Enter First Name",
                  type: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 20,
                ),
                DefaultTextField(
                  isPassword: false,
                  controller: lastNameController,
                  labelText: "Last Name",
                  hintText: "Enter Last Name",
                  type: TextInputType.name,
                ),
                const SizedBox(
                  height: 20,
                ),
                DefaultTextField(
                  isPassword: false,
                  controller: emailController,
                  labelText: "Email",
                  hintText: "Enter Your Email",
                  type: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 20,
                ),
                DefaultTextField(
                  isPassword: true,
                  controller: passwordController,
                  labelText: "Password",
                  hintText: "Enter Your Password",
                  type: TextInputType.name,
                ),
                const SizedBox(
                  height: 20,
                ),
                DefaultTextField(
                  isPassword: isPassword,
                  controller: confirmPasswordController,
                  labelText: "Confirm Password",
                  hintText: "Confirm Your Password",
                  type: TextInputType.name,
                ),
                const SizedBox(
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
                        displayBar(context, "Registration Successful");
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'badly formatted') {
                          displayBar(
                              context, "The password provided is too weak.");
                        } else if (e.code == 'email-already-in-use') {
                          displayBar(context,
                              "The account already exists for that email.");
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
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account ?",
                      style: Styles.textStyle16.copyWith(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Sign In",
                        style: Styles.textStyle16.copyWith(
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
      email: emailController.text,
      password: passwordController.text,
    );
  }
}
