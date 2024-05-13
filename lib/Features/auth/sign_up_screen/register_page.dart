// ignore_for_file: use_build_context_synchronously

import 'package:bookly/Features/auth/widgets/custom_button.dart';
import 'package:bookly/Features/auth/widgets/custom_text_field.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String? email;

  String? password;
  bool isLoading = false;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        backgroundColor: kPrimeryColor,
        body: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: ListView(children: [
              const SizedBox(
                height: 22,
              ),
              Image.asset(
                "assets/images/book_icon.png",
                height: MediaQuery.of(context).size.height * 0.18,
                width: 50,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Bookly',
                      style: TextStyle(
                          fontSize: 36,
                          color: Colors.white,
                          fontFamily: 'Pacifico')),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Row(
                children: [
                  Text('Register',
                      style: TextStyle(fontSize: 32, color: Colors.white)),
                ],
              ),
              const SizedBox(
                height: 26,
              ),
              CustomTextField(
                onChanged: (data) {
                  email = data;
                },
                hintText: 'Email',
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextField(
                obscureText: true,
                onChanged: (data) {
                  password = data;
                },
                hintText: 'Password',
              ),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                onPressed: () async {
                  if (formKey.currentState!.validate()) {
                    isLoading = true;
                    setState(() {});
                    try {
                      await userRegister();
                      GoRouter.of(context).push(AppRouter.kloginpage);
                      showSnackBar(context, 'successfully registered.');
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'weak-password') {
                        showSnackBar(
                            context, "The password provided is too weak.");
                      } else if (e.code == 'email-already-in-use') {
                        showSnackBar(context,
                            'The account already exists for that email.');
                      }
                    } catch (ex) {
                      showSnackBar(context,
                          'there was an error please try again later.');
                      print(ex);
                    }
                    isLoading = false;
                    setState(() {});
                  }
                },
                text: 'Register',
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('already have an account?',
                      style: TextStyle(fontSize: 16, color: Colors.white)),
                  TextButton(
                      onPressed: () {
                        GoRouter.of(context).push(
                          AppRouter.kloginpage,
                        );
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 16,
                          color: kSecondaryColor,
                        ),
                      ))
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }

  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

  Future<void> userRegister() async {
    UserCredential user = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email!, password: password!);
  }
}
