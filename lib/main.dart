import 'package:crudapplication/presentation/screens/main_screen.dart';
import 'package:crudapplication/presentation/screens/authentication/sign_in_screen.dart';
import 'package:crudapplication/presentation/screens/authentication/sign_up_screen.dart';
import 'package:crudapplication/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';

import 'presentation/screens/authentication/forgot_password.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Poppins",
      ),
      home: const MainScreen(),
    );
  }
}
