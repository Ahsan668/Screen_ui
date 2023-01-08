import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:screen_ui/GetAppRoute.dart';
import 'package:screen_ui/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        color: const Color(0xff333436),
        alignment: Alignment.center,
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
                child: Image.asset(
                  "assets/images/bot.png",
                  width: 450,
                )),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 110,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Login",
                      style: GoogleFonts.rubik(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              decoration: TextDecoration.none,
                              fontSize: 26,
                              letterSpacing: 3)),
                    ),
                    const SizedBox(
                      width: 11,
                    ),
                    RotatedBox(
                      quarterTurns: 1,
                      child: Text(
                        "Sag Skills",
                        style: GoogleFonts.rubik(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.redAccent,
                            decoration: TextDecoration.none,
                            letterSpacing: 5,
                            fontSize: 26,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                Material(
                  child: Container(
                    color: Colors.redAccent,
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: Form(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          TextFormField(
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(22),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff333436),
                                ),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 2,
                                ),
                              ),
                              hintText: "Your Email",
                              hintStyle: TextStyle(
                                color: Colors.white70,
                                fontSize: 14,
                                letterSpacing: 1,
                              ),
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.white70,
                              ),
                              fillColor: Color(0xff333436),
                              filled: true,
                            ),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(22),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff333436),
                                ),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 2,
                                ),
                              ),
                              hintText: "Password",
                              hintStyle: TextStyle(
                                color: Colors.white70,
                                fontSize: 14,
                                letterSpacing: 1,
                              ),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.white70,
                              ),
                              fillColor: Color(0xff333436),
                              filled: true,
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.only(left: 50, right: 50),
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 42,
                    width: 323,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                      ),
                      onPressed: () {
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      gradient: LinearGradient(colors: [
                        Colors.grey,
                        Colors.white12,
                      ])),
                ),
                
                TextButton(onPressed: (){
                  Get.toNamed('SignupScreen');
                debugPrint("TO SignupPage");
                  },
                    child: Text("Don't have an account? Register here",
                      style: TextStyle(fontSize: 14, color: Colors.white70),)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
