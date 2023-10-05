import 'package:crudapplication/presentation/screens/authentication/reset_screen.dart';
import 'package:crudapplication/presentation/widgets/custom_form_button.dart';
import 'package:crudapplication/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            left: 8,
            right: 8,
            bottom: 8,
            top: 20,
          ),
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
                    "Welcome to TruBeat",
                    style: TextStyle(
                        color: tBlackColor,
                        fontSize: 28,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  const Text(
                    "Sign up or login below to manage your ",
                    style: TextStyle(
                      color: tgreyColor,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  OtpTextField(
                      autoFocus: true,
                      numberOfFields: 4,
                      obscureText: true,
                      borderColor: tGreenColor,
                      showFieldAsBox: true,
                      focusedBorderColor: tGreenColor,
                      cursorColor: tDarkGreen,
                      fieldWidth: 60,
                      
                      // validator: (value) {
                      //   // Custom validation logic for OTP
                      //   if (value == null || value.isEmpty) {
                      //     return 'OTP is required';
                      //   } else if (value.length != 4) {
                      //     return 'OTP must be 4 digits long';
                      //   } else if (value != '1234') {
                      //     // Replace '1234' with the expected OTP value
                      //     return 'Invalid OTP';
                      //   }
                      //   return null;
                      // },
                      ),
                  const SizedBox(
                    height: 200,
                  ),
                  CustomFormButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ResetPassword(),
                      ));
                    },
                    buttonText: "Verify Now",
                    backgroundColor: tGreenColor,
                    textColor: tDarkGreen,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Didn't you receive any code? Resend Code",
                    style: TextStyle(color: tgreyColor),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
