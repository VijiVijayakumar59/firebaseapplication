import 'dart:developer';

import 'package:crudapplication/presentation/widgets/custom_form_button.dart';
import 'package:crudapplication/presentation/widgets/custom_text_form_widget.dart';
import 'package:crudapplication/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 244, 241, 241),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextFormWidget(
                    textcontroller: nameController,
                    prefixIcon: Icons.person_2_outlined,
                    placeHolder: "Your name",
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomTextFormWidget(
                    textcontroller: emailController,
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value)) {
                        return "Enter Valid Email";
                      } else {
                        return null;
                      }
                    },
                    prefixIcon: Icons.mail_outline,
                    placeHolder: "Enter your email",
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomTextFormWidget(
                    textcontroller: passwordController,
                    validator: (value) {
                      if (value!.length < 6) {
                        return "Password is Incorrect";
                      } else {
                        return null;
                      }
                    },
                    isPassword: true,
                    prefixIcon: Icons.lock_open_outlined,
                    placeHolder: "Enter your password",
                    suffixIcon: Icons.visibility,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomTextFormWidget(
                    textcontroller: confirmpasswordController,
                    validator: (value) {
                      if (value != passwordController.text) {
                        return "Password is Incorrect";
                      } else {
                        return null;
                      }
                    },
                    isPassword: true,
                    prefixIcon: Icons.lock_open_outlined,
                    placeHolder: "Confirm your password",
                    suffixIcon: Icons.visibility,
                  ),
                  // const SizedBox(
                  //   height: 12,
                  // ),
                  // const Text(
                  //   "Already an user ? Login.",
                  //   style: TextStyle(color: tgreyColor),
                  // ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomFormButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
                          log('validation success');
                        }
                      },
                      buttonText: "Sign Up",
                      backgroundColor: tGreenColor,
                      textColor: tDarkGreen),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
