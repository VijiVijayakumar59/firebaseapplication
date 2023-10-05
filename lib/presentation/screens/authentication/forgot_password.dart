import 'dart:developer';

import 'package:crudapplication/presentation/screens/authentication/verification_screen.dart';
import 'package:crudapplication/presentation/widgets/custom_form_button.dart';
import 'package:crudapplication/presentation/widgets/custom_text_form_widget.dart';
import 'package:crudapplication/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8, top: 20),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.ac_unit_sharp,
                        color: tGreenColor,
                        size: 40,
                      ),
                      Text(
                        "TruBeat",
                        style: TextStyle(
                            color: tDarkGreen,
                            fontSize: 32,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Text(
                    "Forget Password",
                    style: TextStyle(
                        color: tBlackColor,
                        fontSize: 28,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  const Text(
                    "Enter your email account to reset password",
                    style: TextStyle(
                      color: tgreyColor,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Container(
                    height: 400,
                    width: 500,
                    child: Image.asset(
                      "assets/images/main_image.png",
                      fit: BoxFit.fitHeight,
                    ),
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
                  CustomFormButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          log("validation success");
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => VerificationScreen(),
                          ));
                        }
                      },
                      buttonText: "Continue",
                      backgroundColor: tGreenColor,
                      textColor: tDarkGreen),
                  const SizedBox(
                    height: 16,
                  ),
                  const CustomFormButton(
                      buttonText: "Cancel",
                      backgroundColor: tWhiteColor,
                      textColor: tBlackColor)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
