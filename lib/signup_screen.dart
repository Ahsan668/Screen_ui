import"package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        color: const Color(0xff333436),
        width: double.infinity,
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
                const SizedBox(height: 100,),

                Row( children: [
                  SizedBox(width: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text("Join and learn designing",
                            style: GoogleFonts.rubik(
                                textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                  fontSize: 36,
                                  letterSpacing: 3,
                                ))
                        ),
                      ),
                      Text("good luck",
                          style: GoogleFonts.rubik(
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                decoration: TextDecoration.none,
                                fontSize: 26,
                                letterSpacing: 9,
                              ))
                      )
                    ],
                  ),
                  ) ,

                ],

                ),
                const SizedBox(height: 40,),
                Material(
                  child: Container(
                    color: Color(0xff333436),
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Form(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        TextFormField(
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(22),
                            border: OutlineInputBorder( ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            hintText: "Your Name",
                            hintStyle: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                              letterSpacing: 1,

                            ),
                            prefixIcon: Icon(Icons.person, color: Colors.white,),
                            fillColor: Color(0xff333436),
                            filled: true,
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(22),
                            border: OutlineInputBorder( ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            hintText: "Your Email",
                            hintStyle: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                              letterSpacing: 1,

                            ),
                            prefixIcon: Icon(Icons.email, color: Colors.white,),
                            fillColor: Color(0xff333436),
                            filled: true,
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(22),
                            border: OutlineInputBorder( ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            hintText: "Your Phone",
                            hintStyle: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                              letterSpacing: 1,

                            ),
                            prefixIcon: Icon(Icons.phone_android_outlined, color: Colors.white,),
                            fillColor: Color(0xff333436),
                            filled: true,
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(22),
                            border: OutlineInputBorder( ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            hintText: "Password",
                            hintStyle: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                              letterSpacing: 1,

                            ),
                            prefixIcon: Icon(Icons.lock, color: Colors.white,),
                            fillColor: Color(0xff333436),
                            filled: true,
                          ),
                        ),

                      ],
                    )),
                  ),

                ),
                SizedBox(height: 10,),
                Container(
                  margin: const EdgeInsets.only(left: 50, right: 50),
                  alignment: Alignment.center,
                  child: SizedBox(width: 323, height: 22,
                  child: ElevatedButton(
                      onPressed: (){},
                      child: Text("Register", style: TextStyle(
                        fontSize: 16,
                        letterSpacing: 3,
                        fontWeight: FontWeight.w400,
                      ),
                      ),

                  ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    gradient: LinearGradient(colors:
                    [
                      Colors.grey,
                      Colors.white12,

                    ]),

                  ),
                ),
                SizedBox(height: 20,),
                Material(
                  color: Colors.transparent,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       CircleAvatar(
                         backgroundColor: Colors.green[200],
                         child: IconButton(
                             onPressed: (){},
                             icon: const FaIcon(
                               FontAwesomeIcons.google,
                             size: 20,
                               color: Colors.orange,
                             )),
                       ),
                      const SizedBox(width: 10,),
                      CircleAvatar(
                        backgroundColor: Colors.green[200],
                        child: IconButton(
                            onPressed: (){},
                            icon: const FaIcon(
                              FontAwesomeIcons.facebook,
                              size: 20,
                              color: Colors.lightBlue,
                            )),
                      ),
                    ],
                  ),

                ),
                const SizedBox(height: 5.0,),
                TextButton(onPressed: (){
                  Get.toNamed("/LoginScreen");
                },
                    child: Text("Already have an account? Login here",
                      style: TextStyle(fontSize: 14, color: Colors.white70),))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
