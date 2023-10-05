import 'dart:developer';

import 'package:crudapplication/presentation/screens/authentication/forgot_password.dart';
import 'package:crudapplication/presentation/widgets/custom_form_button.dart';
import 'package:crudapplication/presentation/widgets/custom_text_form_widget.dart';
import 'package:crudapplication/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({
    super.key,
  });

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();
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
                    prefixIcon: Icons.mail_outline,
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value)) {
                        return "Enter Valid Email";
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.emailAddress,
                    placeHolder: "Enter your email",
                    textcontroller: emailController,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomTextFormWidget(
                    textcontroller: passwordController,
                    validator: (value) {
                      if (value!.isEmpty || value.length < 6) {
                        return "Enter Valid Password";
                      } else {
                        return null;
                      }
                    },
                    isPassword: true,
                    prefixIcon: Icons.lock_open_outlined,
                    placeHolder: "Enter your password",
                    // suffixIcon: Icons.visibility,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ForgotPassword(),
                      ));
                    },
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(color: tgreyColor),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  CustomFormButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          log("validation success");
                        }
                      },
                      buttonText: "Login",
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
