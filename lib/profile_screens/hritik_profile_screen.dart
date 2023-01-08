import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
class HritikProfileScreen extends StatelessWidget {
  const HritikProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/mount.jpg"),
            fit: BoxFit.cover,

          ),
        ),
        child: Stack(
          children: <Widget>[
            Material(
              color: Colors.transparent,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const SizedBox(height: 120,),
                  IconButton(
                    onPressed: (){
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.blueAccent,
                      size: 33,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                bottom: 0,
                right: 0,
                height: 600,
                child: Image.asset("assets/images/profilebackg.png")),

            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 150),
                  child: const Align(
                    alignment: Alignment.center,
                    child: CircleAvatar(
                      radius: 87,
                      backgroundImage: AssetImage("assets/images/hritik.png"),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                SizedBox(
                  width: 450,
                  height: 40,
                  child: Padding(padding: EdgeInsets.only(left: 110,),
                    child: AnimatedTextKit(
                      repeatForever: true,
                      animatedTexts: [
                        ScaleAnimatedText("I am Hritik",
                          textStyle: GoogleFonts.kronaOne(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  fontSize: 32,
                                  letterSpacing: 2,
                                  decoration: TextDecoration.none
                              )
                          ),
                        ),
                      ],
                      onTap: (){},
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Profession        Actor",
                            style: GoogleFonts.kronaOne(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  fontSize: 13,
                                  letterSpacing: 2,
                                  decoration: TextDecoration.none
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text("Age                     43",
                            style: GoogleFonts.kronaOne(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  fontSize: 13,
                                  letterSpacing: 2,
                                  decoration: TextDecoration.none
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text("Country             India",
                            style: GoogleFonts.kronaOne(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  fontSize: 13,
                                  letterSpacing: 2,
                                  decoration: TextDecoration.none
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),

                          Row(
                            children: <Widget>[
                              SizedBox(width: 350,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("About",
                                      style: GoogleFonts.rubik(
                                        textStyle: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                            fontSize: 15,
                                            letterSpacing: 2,
                                            decoration: TextDecoration.none
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 10,),
                                    Text("Hey I am Hritik and I am a Actor and Model"
                                        "I work as a an Actor in Bollywood, I have"
                                        "delivered more than 200 film projects successfully"
                                        "I love to work as a Actor",
                                      style: GoogleFonts.rubik(
                                        textStyle: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                            fontSize: 15,
                                            letterSpacing: 2,
                                            decoration: TextDecoration.none
                                        ),
                                      ),
                                    ),
                                    const  SizedBox(height: 10,),
                                    Padding(padding: const EdgeInsets.only(left: 23),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[
                                          SizedBox(height: 40, width: 150,
                                              child: ElevatedButton(
                                                onPressed: (){},
                                                child: Text("Follow"),
                                                style: ElevatedButton.styleFrom(
                                                  primary: Colors.green[300],
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(22),
                                                      side: const BorderSide(color: Colors.white,
                                                        width: 3,)
                                                  ),
                                                ),
                                              )
                                          ),
                                          SizedBox(width: 15,),
                                          SizedBox(height: 40, width: 150,
                                              child: ElevatedButton(
                                                onPressed: (){},
                                                child: Text("Message"),
                                                style: ElevatedButton.styleFrom(
                                                  primary: Colors.green[300],
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(22),
                                                      side: const BorderSide(color: Colors.white,
                                                        width: 3,)
                                                  ),
                                                ),
                                              )
                                          ),
                                        ],
                                      ),
                                    )
                                  ],

                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}
