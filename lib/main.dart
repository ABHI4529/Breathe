import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:google_fonts/google_fonts.dart';

import 'WelcomePage.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent));
    return SafeArea(
        top: false,
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 46, 128, 204),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FadeIn(
                    child: Container(
                      padding: EdgeInsets.only(bottom: 50),
                  height: 200,
                  child: Image.asset("assets/Logo.png"),
                )),
                FadeInUp(
                  child: Container(
                    child: Center(
                        child: Text(
                      "Breathe",
                      style: GoogleFonts.spartan(
                        color: Colors.white,
                        fontSize: 60,
                      ),
                    )),
                  ),
                ),
                FadeInUp(
                  preferences: AnimationPreferences(
                      offset: Duration(milliseconds: 1000)),
                  child: Container(
                    margin: EdgeInsets.all(20),
                    child: Center(
                        child: Text(
                      "Hello, My Name is Breathe and I'm here to help you relax ☺",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.spartan(
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
                FadeInUp(
                  preferences: AnimationPreferences(
                      offset: Duration(milliseconds: 2000)),
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Center(
                        child: Text(
                      "Let's get you started, create an account first",
                      style: GoogleFonts.spartan(
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
                FadeInUp(
                  preferences: AnimationPreferences(
                      offset: Duration(milliseconds: 3000)),
                  child: Container(
                    padding: EdgeInsets.only(top: 150),
                    child: Center(
                        child: SizedBox(
                      width: 300,
                      height: 50,
                      child: ElevatedButton(
                        style: ButtonStyle(backgroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                          return Colors.white;
                        })),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => WelcomePage()));
                        },
                        child: Text("Login with Google",
                            style: GoogleFonts.spartan(color: Colors.black)),
                      ),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
