import 'dart:ui';

import 'package:crudapplication/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormWidget extends StatefulWidget {
  const CustomTextFormWidget({
    super.key,
    this.prefixIcon,
    required this.placeHolder,
    this.suffixIcon,
    required this.textcontroller,
    this.keyboardType,
    this.isPassword = false,
    this.validator,
  });

  final IconData? prefixIcon;
  final String? placeHolder;
  final IconData? suffixIcon;
  final TextEditingController textcontroller;
  final TextInputType? keyboardType;
  final bool isPassword;
  final String? Function(String?)? validator;

  @override
  State<CustomTextFormWidget> createState() => _CustomTextFormWidgetState();
}

class _CustomTextFormWidgetState extends State<CustomTextFormWidget> {
  bool passwordVisibility = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.textcontroller,
      obscureText: passwordVisibility,
      validator: widget.validator,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide.none),
        // suffixIcon: Icon(
        //   widget.suffixIcon,
        //   color: tgreyColor,
        // ),
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: () {
                  setState(() {
                    passwordVisibility = !passwordVisibility;
                  });
                },
                icon: Icon(
                  passwordVisibility
                      ? Icons.visibility_off_outlined
                      : Icons.visibility,
                  color: tgreyColor,
                ),
              )
            : null,
        prefixIcon: Icon(
          widget.prefixIcon,
          color: tgreyColor,
        ),
        hintText: widget.placeHolder,
        filled: true,
        fillColor: tWhiteColor,
      ),
    );
  }
}
