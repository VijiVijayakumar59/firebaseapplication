import 'package:crudapplication/presentation/screens/authentication/sign_in_screen.dart';
import 'package:crudapplication/presentation/screens/authentication/sign_up_screen.dart';
import 'package:crudapplication/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                const Text(
                  " project, task, and productivity.",
                  style: TextStyle(
                    color: tgreyColor,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const TabBar(
                  tabs: [
                    Tab(
                      text: "Login",
                    ),
                    Tab(
                      text: "Sign Up",
                    ),
                  ],
                  indicatorColor: tGreenColor,
                  unselectedLabelColor: tgreyColor,
                  labelColor: tDarkGreen,
                ),
                const Expanded(
                    child:
                        TabBarView(children: [SignInScreen(), SignUpScreen()]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
