import 'package:breathe_1/Canvas.dart';
import 'package:breathe_1/listenSongs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:google_fonts/google_fonts.dart';

class DashB extends StatefulWidget {
  @override
  _DashBState createState() => _DashBState();
}

class _DashBState extends State<DashB> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(children: [
          Container(
            child: Image.asset("assets/Ai.gif"),
          ),
          Container(
            margin: EdgeInsets.all(5),
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FadeInUp(
                    // ignore: deprecated_member_use
                    child: SizedBox(
                  width: 180,
                  height: 100,
                  child: RaisedButton(
                    elevation: 10,
                    onPressed: () {
                      Navigator.push(context,
                          CupertinoPageRoute(builder: (context) => Songs()));
                    },
                    color: Colors.white,
                    child: Text(
                      "Listen To Beautiful Relaxing Songs",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.spartan(),
                    ),
                  ),
                )),
                FadeInUp(
                    // ignore: deprecated_member_use
                    child: SizedBox(
                  width: 180,
                  height: 100,
                  child: RaisedButton(
                    elevation: 10,
                    onPressed: () {
                      Navigator.push(context,
                          CupertinoPageRoute(builder: (context) => Paint_Canvas()));
                    },
                    color: Colors.white,
                    child: Text(
                      "Share your thoughts with us",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.spartan(),
                    ),
                  ),
                )),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            alignment: Alignment.centerRight,
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: FadeInUp(
                // ignore: deprecated_member_use
                child: SizedBox(
              width: 200,
              height: 150,
              child: RaisedButton(
                elevation: 10,
                onPressed: () {},
                color: Colors.white,
                child: Text(
                  "Show your creativity on our new sketch board",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.spartan(),
                ),
              ),
            )),
          ),
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FadeInUp(
                  child: SizedBox(
                    width: 180,
                    height: 150,
                    child: RaisedButton(
                      elevation: 10,
                      onPressed: () {},
                      color: Colors.white,
                      child: Text(
                        "Chat with the people on Breathe",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.spartan(),
                      ),
                    ),
                  ),
                ),
                FadeInUp(
                  child: SizedBox(
                    width: 180,
                    height: 150,
                    child: RaisedButton(
                      elevation: 10,
                      onPressed: () {},
                      color: Colors.white,
                      child: Text(
                        "Chat with Breathe",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.spartan(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
