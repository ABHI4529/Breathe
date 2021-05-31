import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:google_fonts/google_fonts.dart';

import 'DashB.dart';

class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.indigo,
        body: PageView(
          controller: _controller,
          children: [
            Container(
              child: ListView(
                children: [
                  FadeInUp(
                    child: Container(
                      margin: EdgeInsets.only(right: 50, top: 100, left: 10),
                      child: Text(
                          "You must be wondering what kind of tests these are?",
                          style: GoogleFonts.spartan(
                            color: Colors.white,
                          )),
                    ),
                  ),
                  FadeInUp(
                    preferences: AnimationPreferences(
                        offset: Duration(milliseconds: 500)),
                    child: Container(
                      margin: EdgeInsets.only(right: 50, top: 20, left: 10),
                      child: Text(
                          "Let me help you here 😀, Tests helps me to know more"
                          " and who you are from inside so that I can treat you better.",
                          style: GoogleFonts.spartan(
                            color: Colors.white,
                          )),
                    ),
                  ),
                  FadeInUp(
                    preferences: AnimationPreferences(
                        offset: Duration(milliseconds: 1000)),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(right: 50, top: 20, left: 10),
                      child: Text("So Let's start 😊.",
                          style: GoogleFonts.spartan(
                            color: Colors.white,
                          )),
                    ),
                  ),
                  FadeInUp(
                    preferences: AnimationPreferences(
                        offset: Duration(milliseconds: 1500)),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(right: 50, top: 100, left: 10),
                      child: Text("How do you define yourself ?",
                          style: GoogleFonts.spartan(
                              color: Colors.white, fontSize: 20)),
                    ),
                  ),
                  Container(
                    child: FadeInUp(
                      preferences: AnimationPreferences(
                          offset: Duration(milliseconds: 2000)),
                      child: Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(right: 50, top: 10, left: 10),
                          padding: EdgeInsets.only(right: 10),
                          child: TextFormField(
                            style: GoogleFonts.spartan(color: Colors.white),
                            cursorColor: Colors.white,
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.only(left: 5, top: 5, bottom: 0),
                                labelText: "Type Here",
                                labelStyle:
                                    GoogleFonts.spartan(color: Colors.white),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                border: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white))),
                          )),
                    ),
                  ),
                  FadeInUp(
                    preferences: AnimationPreferences(
                        offset: Duration(milliseconds: 3000)),
                    child: Container(
                        margin: EdgeInsets.only(right: 10, top: 200),
                        alignment: Alignment.bottomRight,
                        child: SizedBox(
                            width: 200,
                            height: 50,
                            child: FlatButton(
                                onPressed: () {
                                  _controller.animateToPage(1,
                                      duration: Duration(milliseconds: 500),
                                      curve: Curves.decelerate);
                                },
                                color: Colors.white,
                                child: Text("Next",
                                    style: GoogleFonts.spartan())))),
                  )
                ],
              ),
            ),
            Container(
              child: ListView(
                children: [
                  FadeInLeft(
                    child: Container(
                      margin: EdgeInsets.only(right: 50, top: 100, left: 10),
                      child: Text(
                          "Feel free and try to express more about yourself ☺.",
                          style: GoogleFonts.spartan(
                            color: Colors.white,
                          )),
                    ),
                  ),
                  FadeInLeft(
                    preferences: AnimationPreferences(
                        offset: Duration(milliseconds: 500)),
                    child: Container(
                      margin: EdgeInsets.only(right: 50, top: 20, left: 10),
                      child: Text(
                          "On Breathe you can heal yourself and\n"
                          "you can help others just like you 😀.",
                          style: GoogleFonts.spartan(
                            color: Colors.white,
                          )),
                    ),
                  ),
                  FadeInLeft(
                    preferences: AnimationPreferences(
                        offset: Duration(milliseconds: 1000)),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(right: 50, top: 20, left: 10),
                      child: Text("Let's move on to the second question.",
                          style: GoogleFonts.spartan(
                            color: Colors.white,
                          )),
                    ),
                  ),
                  FadeInLeft(
                    preferences: AnimationPreferences(
                        offset: Duration(milliseconds: 1500)),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(right: 50, top: 100, left: 10),
                      child: Text("What can we help you with ?",
                          style: GoogleFonts.spartan(
                              color: Colors.white, fontSize: 20)),
                    ),
                  ),
                  Container(
                    child: FadeInLeft(
                      preferences: AnimationPreferences(
                          offset: Duration(milliseconds: 2000)),
                      child: Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(right: 50, top: 10, left: 10),
                          padding: EdgeInsets.only(right: 10),
                          child: TextFormField(
                            style: GoogleFonts.spartan(color: Colors.white),
                            cursorColor: Colors.white,
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.only(left: 5, top: 5, bottom: 0),
                                labelText: "Type Here",
                                labelStyle:
                                    GoogleFonts.spartan(color: Colors.white),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                border: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white))),
                          )),
                    ),
                  ),
                  FadeInRight(
                    preferences: AnimationPreferences(
                        offset: Duration(milliseconds: 2500)),
                    child: Container(
                        margin: EdgeInsets.only(right: 10, top: 200),
                        alignment: Alignment.bottomRight,
                        child: SizedBox(
                            width: 200,
                            height: 50,
                            child: FlatButton(
                                onPressed: () {
                                  _controller.animateToPage(2,
                                      duration: Duration(milliseconds: 500),
                                      curve: Curves.decelerate);
                                },
                                color: Colors.white,
                                child: Text("Next",
                                    style: GoogleFonts.spartan())))),
                  )
                ],
              ),
            ),
            Container(
              child: ListView(
                children: [
                  FadeInLeft(
                    child: Container(
                      margin: EdgeInsets.only(right: 50, top: 100, left: 10),
                      child: Text(
                          "Breathe is platform where you can\nbe what you want.☺.",
                          style: GoogleFonts.spartan(
                            color: Colors.white,
                          )),
                    ),
                  ),
                  FadeInLeft(
                    preferences: AnimationPreferences(
                        offset: Duration(milliseconds: 500)),
                    child: Container(
                      margin: EdgeInsets.only(right: 50, top: 20, left: 10),
                      child: Text("Chat with people anonymously.",
                          style: GoogleFonts.spartan(
                            color: Colors.white,
                          )),
                    ),
                  ),
                  FadeInLeft(
                    preferences: AnimationPreferences(
                        offset: Duration(milliseconds: 1000)),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(right: 50, top: 20, left: 10),
                      child: Text("Be yourself, and just Breathe 😀.",
                          style: GoogleFonts.spartan(
                            color: Colors.white,
                          )),
                    ),
                  ),
                  FadeInLeft(
                    preferences: AnimationPreferences(
                        offset: Duration(milliseconds: 1500)),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(right: 50, top: 100, left: 10),
                      child: Text("What brings you here on Breathe ?",
                          style: GoogleFonts.spartan(
                              color: Colors.white, fontSize: 20)),
                    ),
                  ),
                  Container(
                    child: FadeInLeft(
                      preferences: AnimationPreferences(
                          offset: Duration(milliseconds: 2000)),
                      child: Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(right: 50, top: 10, left: 10),
                          padding: EdgeInsets.only(right: 10),
                          child: TextFormField(
                            style: GoogleFonts.spartan(color: Colors.white),
                            cursorColor: Colors.white,
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.only(left: 5, top: 5, bottom: 0),
                                labelText: "Type Here",
                                labelStyle:
                                    GoogleFonts.spartan(color: Colors.white),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                border: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white))),
                          )),
                    ),
                  ),
                  FadeInRight(
                    preferences: AnimationPreferences(
                        offset: Duration(milliseconds: 2500)),
                    child: Container(
                        margin: EdgeInsets.only(right: 10, top: 200),
                        alignment: Alignment.bottomRight,
                        child: SizedBox(
                            width: 200,
                            height: 50,
                            child: FlatButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      CupertinoPageRoute(
                                        builder: (context) => DashB(),
                                      ));
                                },
                                color: Colors.white,
                                child: Text("Next",
                                    style: GoogleFonts.spartan())))),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
