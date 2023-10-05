import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomFormButton extends StatelessWidget {
  final String buttonText;
  final Color backgroundColor;
  final Color textColor;
  final void Function()? onPressed;
  const CustomFormButton({
    super.key,
    required this.buttonText,
    required this.backgroundColor,
    required this.textColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shadowColor: null,
        splashFactory: NoSplash.splashFactory,
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 0,
        side: BorderSide(color: Colors.grey.shade300),
        minimumSize: const Size(double.maxFinite, 48), // NEW
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          color: textColor,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
