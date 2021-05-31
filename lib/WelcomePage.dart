import 'package:breathe_1/TestPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            child: Image.asset("assets/Ai.gif"),
          ),
          Container(
            child: FadeInUp(
              child: Text(
                "Hey Abhinav, I'm here to help you relax 😀.",
                style: GoogleFonts.spartan(),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: FadeInUp(
              preferences:
                  AnimationPreferences(offset: Duration(milliseconds: 1000)),
              child: Text(
                "As I've told you before you can call me Breathe",
                style: GoogleFonts.spartan(),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: FadeInUp(
              preferences:
                  AnimationPreferences(offset: Duration(milliseconds: 2000)),
              child: Text(
                "Before Beginning let me take your quick test\n"
                "so that I'll be able to know you more 😊",
                textAlign: TextAlign.center,
                style: GoogleFonts.spartan(),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: FadeInUp(
              preferences:
                  AnimationPreferences(offset: Duration(milliseconds: 3000)),
              child: Text(
                "You Ready ?",
                textAlign: TextAlign.center,
                style: GoogleFonts.spartan(),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 150),
            child: FadeInUp(
                preferences:
                    AnimationPreferences(offset: Duration(milliseconds: 4000)),
                child: SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => TestPage()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Take a Test",
                            style: GoogleFonts.spartan(),
                          ),
                          Icon(Icons.arrow_right_alt_rounded)
                        ],
                      )),
                )),
          )
        ],
      ),
    );
  }
}
