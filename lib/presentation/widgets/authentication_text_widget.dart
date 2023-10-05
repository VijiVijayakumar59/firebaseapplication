import 'package:crudapplication/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class AuthenticationTextWidget extends StatelessWidget {
  final String textOne;
  final String textTwo;
  final String textThree;
  final String? textFour;
  final IconData iconData;
  const AuthenticationTextWidget(
      {super.key,
      required this.textOne,
      required this.textTwo,
      required this.textThree,
      this.textFour,
      required this.iconData});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  iconData,
                  color: tGreenColor,
                  size: 40,
                ),
                Text(
                  textOne,
                  style: const TextStyle(
                      color: tDarkGreen,
                      fontSize: 32,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              textTwo,
              style: const TextStyle(
                  color: tBlackColor,
                  fontSize: 28,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 14,
            ),
            Text(
              textThree,
              style: const TextStyle(
                color: tgreyColor,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              textFour!,
              style: const TextStyle(
                color: tgreyColor,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
