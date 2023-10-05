import 'package:crudapplication/presentation/screens/main_screen.dart';
import 'package:crudapplication/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: tWhiteColor,
      child: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const MainScreen(),
                ));
              },
              child: Text("sign in / sign up"))),
    );
  }
}
