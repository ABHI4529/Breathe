import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

import 'Quote.dart';

class Paint_Canvas extends StatefulWidget {
  @override
  _Paint_CanvasState createState() => _Paint_CanvasState();
}

class _Paint_CanvasState extends State<Paint_Canvas> {
  double _angle = 0;

  static Future<List<Quote>> fetchQuotes() async {
    final response =
        await http.get(Uri.parse('https://zenquotes.io/api/quotes'));
    if (response.statusCode == 200) {
      print(quoteFromJson(response.body).length);
      return quoteFromJson(response.body.toString());
    }
  }

  @override
  void initState() {
    super.initState();
    fetchQuotes();
  }

  PageController _quoteController = PageController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue[800],
            leading: Container(
              padding: EdgeInsets.only(left: 5),
              child: SizedBox(
                child: Image.asset("assets/Logo.png"),
              ),
            ),
            centerTitle: true,
            title: Text(
              "Thoughts",
              style: GoogleFonts.spartan(),
            ),
            actions: [
              IconButton(
                  icon: Icon(Icons.settings_outlined, color: Colors.white),
                  onPressed: () {})
            ],
          ),
          body: FutureBuilder<List<Quote>>(
              future: fetchQuotes(),
              builder:
                  (BuildContext context, AsyncSnapshot<List<Quote>> snapshot) {
                if (snapshot.connectionState == ConnectionState.done &&
                    snapshot.hasData) {
                  return PageView.builder(
                    scrollDirection: Axis.vertical,
                    controller: _quoteController,
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FadeInUp(
                              child: Text(snapshot.data[index].q,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.spartan(fontSize: 20)),
                            ),
                            FadeInUp(
                              preferences: AnimationPreferences(
                                  offset: Duration(milliseconds: 500)),
                              child: Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Text("-" + snapshot.data[index].a,
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.spartan(fontSize: 10)),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              }),
          floatingActionButton: FabCircularMenu(
            ringColor: Colors.blue[700],
            fabColor: Colors.blue[700],
            fabOpenColor: Colors.blue[700],
            fabOpenIcon: Icon(Icons.add, color: Colors.white),
            fabCloseIcon:
                RotateIn(child: Icon(Icons.close, color: Colors.white)),
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Share a Thought",
                    style: GoogleFonts.spartan(color: Colors.white),
                  )),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Settings",
                    style: GoogleFonts.spartan(color: Colors.white),
                  )),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Search",
                    style: GoogleFonts.spartan(color: Colors.white),
                  )),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Explore",
                    style: GoogleFonts.spartan(color: Colors.white),
                  ))
            ],
          )),
    );
  }
}