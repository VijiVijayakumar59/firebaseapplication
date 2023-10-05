import 'package:crudapplication/presentation/widgets/custom_form_button.dart';
import 'package:crudapplication/presentation/widgets/custom_text_form_widget.dart';
import 'package:crudapplication/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final resetKey = GlobalKey<FormState>();

  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8, top: 16),
          child: Form(
            key: resetKey,
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
                  "Reset Your Password",
                  style: TextStyle(
                      color: tBlackColor,
                      fontSize: 28,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 14,
                ),
                const Text(
                  "The password must be different than before ",
                  style: TextStyle(
                    color: tgreyColor,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                CustomTextFormWidget(
                  textcontroller: passwordController,
                  placeHolder: "New password",
                  prefixIcon: Icons.lock_open_outlined,
                  suffixIcon: Icons.visibility,
                ),
                CustomTextFormWidget(
                  textcontroller: confirmPasswordController,
                  placeHolder: "Confirm password",
                  prefixIcon: Icons.lock_open_outlined,
                  suffixIcon: Icons.visibility,
                ),
                const SizedBox(
                  height: 340,
                ),
                CustomFormButton(
                    onPressed: () {},
                    buttonText: "Continue",
                    backgroundColor: tGreenColor,
                    textColor: tDarkGreen),
                CustomFormButton(
                    onPressed: () {},
                    buttonText: "Cancel",
                    backgroundColor: tWhiteColor,
                    textColor: tBlackColor),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
