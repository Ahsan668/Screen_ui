import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:screen_ui/home_screen.dart';
import 'package:screen_ui/login_screen.dart';
import 'package:screen_ui/profile_screens/dony_profile_screen.dart';
import 'package:screen_ui/profile_screens/hritik_profile_screen.dart';
import 'package:screen_ui/profile_screens/sandy_profile_screen.dart';
import 'package:screen_ui/signup_screen.dart';

import 'profile_screens/jelly_profile_screen.dart';
import 'profile_screens/srk_profile_screen.dart';
import 'package:screen_ui/profile_screens/hritik_profile_screen.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        color: Colors.white,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
                top: -50,
                left: 0,
                height: 300,
                child: Image.asset("assets/images/homeTop.png"),
            width: 400,
            ),
            Positioned(
              bottom: 0,
              right: 0,
              width: 500,
              child: Image.asset("assets/images/homeBotton.png", width: 400,),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 50,),
                Container(
                  padding: EdgeInsets.only(left: 15, right: 25),
                  child: Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text("We are developers for Mobile Application",
                    style: GoogleFonts.rubik(textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      letterSpacing: 1,
                      decoration: TextDecoration.none,

                    )),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(padding: EdgeInsets.only(left: 40,),
                    child: Text("and Websites",
                      style: GoogleFonts.rubik(textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        letterSpacing: 1,
                        decoration: TextDecoration.none,
                      )),
                    ),
                  ),
                ),
                const SizedBox(height: 150,),
                Text("Our Team",
                  style: GoogleFonts.rubik(textStyle: TextStyle(
                    color: Colors.deepOrangeAccent,
                    fontSize: 26,
                    letterSpacing: 1,
                    decoration: TextDecoration.none,
                  )),
                ),
                const SizedBox(height: 40,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 25, right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [BoxShadow(
                              color: Color(0xffd4d4d4),
                              spreadRadius: 2,
                              blurRadius: 2,
                            ),
                            ]
                          ),
                          height: 80,
                          width: 80,
                          child: SizedBox(
                            height: 80,
                            width: 80,
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => DonyProfileScreen() )
                                );
                              },
                              child: Image.asset("assets/images/mark.png",
                              fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                color: Color(0xffd4d4d4),
                                spreadRadius: 2,
                                blurRadius: 2,
                              ),
                              ]
                          ),
                          height: 80,
                          width: 80,
                          child: SizedBox(
                            height: 80,
                            width: 80,
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => SandyProfileScreen() )
                                );
                                },
                              child: Image.asset("assets/images/sandy.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0xffd4d4d4),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                ),
                              ]
                          ),
                          height: 80,
                          width: 80,
                          child: SizedBox(
                            height: 80,
                            width: 80,
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => SrkProfileScreen() )
                                );
                              },
                              child: Image.asset("assets/images/srk.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0xffd4d4d4),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                ),
                              ]
                          ),
                          height: 80,
                          width: 80,
                          child: SizedBox(
                            height: 80,
                            width: 80,
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => DonyProfileScreen() )
                                );
                              },
                              child: Image.asset("assets/images/lony.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 25, right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [BoxShadow(
                                color: Color(0xffd4d4d4),
                                spreadRadius: 2,
                                blurRadius: 2,
                              ),
                              ]
                          ),
                          height: 80,
                          width: 80,
                          child: SizedBox(
                            height: 80,
                            width: 80,
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => DonyProfileScreen() )
                                );
                              },
                              child: Image.asset("assets/images/dony.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0xffd4d4d4),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                ),
                              ]
                          ),
                          height: 80,
                          width: 80,
                          child: SizedBox(
                            height: 80,
                            width: 80,
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => HritikProfileScreen() )
                                );
                              },
                              child: Image.asset("assets/images/hritik.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0xffd4d4d4),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                ),
                              ]
                          ),
                          height: 80,
                          width: 80,
                          child: SizedBox(
                            height: 80,
                            width: 80,
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => JellyProfileScreen() )
                                );
                              },
                              child: Image.asset("assets/images/mark.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0xffd4d4d4),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                ),
                              ]
                          ),
                          height: 80,
                          width: 80,
                          child: SizedBox(
                            height: 80,
                            width: 80,
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => JellyProfileScreen() )
                                );
                              },
                              child: Image.asset("assets/images/Jelly.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              SizedBox(height: 20,),
                SizedBox(height: 82,
                width: 200,
                  child: TextButton(
                    onPressed: (){},
                    child: Text("More", style: TextStyle(
                      fontSize: 20,
                      color: Colors.blueAccent,
                      decoration: TextDecoration.none,
                      letterSpacing: 1,

                    ),),),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
