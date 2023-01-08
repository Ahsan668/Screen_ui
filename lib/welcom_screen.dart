import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:screen_ui/home_screen.dart';
import 'package:screen_ui/login_screen.dart';
import 'package:screen_ui/profile_screens/dony_profile_screen.dart';
import 'package:screen_ui/profile_screens/hritik_profile_screen.dart';
import 'package:screen_ui/profile_screens/sandy_profile_screen.dart';
import 'package:screen_ui/GetAppRoute.dart';
import 'package:screen_ui/signup_screen.dart';
import 'profile_screens/jelly_profile_screen.dart';
import 'profile_screens/srk_profile_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 5000),
      // getPages: GetAppRoute().PageRoute(),
  //    initialRoute: '/WelcomeScreen',
       getPages: [
  //       GetPage(name: '/', page: () => const WelcomeScreen()),
         GetPage(name: '/LoginScreen', page: () => const LoginScreen()),
         GetPage(name: '/SignupScreen', page: () => const SignupScreen()),
         GetPage(name: '/HomeScreen', page: () => const HomeScreen()),
  //       GetPage(name: '/JellyProfileScreen', page: () => const JellyProfileScreen()),
  //       GetPage(name: '/DonyProfileScreen', page: () => const DonyProfileScreen()),
  //       GetPage(name: '/HritikProfileScreen', page: () => const HritikProfileScreen()),
  //       GetPage(name: '/SrkProfileScreen', page: () => const SrkProfileScreen()),
  //       GetPage(name: '/SandyProfileScreen', page: () => const SandyProfileScreen()),
       ],
       home: Container(
        color: const Color(0xff333436),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
                top: 0,
                left: 0,
                child: Image.asset(
                  "assets/images/topp.png",
                  width: 240,
                )),
            Positioned(
              bottom: -100,
              right: -100,
              child: Image.asset("assets/images/bot.png"),
              width: 240,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 160, left: 20),
                  child: Text(
                    "Subscribe our channel Sag Skills",
                    style: GoogleFonts.rubik(
                        textStyle: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontSize: 26,
                      letterSpacing: 3,
                    )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 70,
                  ),
                  child: Text(
                    "on sag skills channel you can learn mobile development",
                    style: GoogleFonts.rubik(
                        textStyle: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontSize: 14,
                      letterSpacing: 1,
                    )),
                  ),
                ),
                SizedBox(height: 80),
                Container(
                  margin: const EdgeInsets.only(left: 50, right: 50),
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 323,
                    height: 42,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.toNamed('/HomeScreen');
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                      ),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 3,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      gradient:
                          LinearGradient(colors: [Colors.white, Colors.grey])),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 50, right: 50),
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 323,
                    height: 42,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.toNamed('/SignupScreen');
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                      ),
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 3,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    gradient: LinearGradient(colors: [
                      Colors.orangeAccent,
                      Colors.deepOrangeAccent,
                    ]),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                RotatedBox(
                  quarterTurns: 1,
                  child: Text(
                    "Sag Skills",
                    style: GoogleFonts.rubik(
                        textStyle: const TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.grey,
                      decoration: TextDecoration.none,
                      fontSize: 26,
                      letterSpacing: 9,
                    )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
