import 'package:flutter/material.dart';
import 'package:xenith/appStart.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        Duration(seconds: 8),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Xenith())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'XENITH 2020',
              style: TextStyle(
                  color: Colors.orangeAccent,
                  letterSpacing: 3,
                  fontSize: 40,
                  fontFamily: "Lucid Grande",
                  fontWeight: FontWeight.bold),
            ),
            Container(
              height: 40,
            ),
            Image.asset(
              'assets/x.png',
              scale: 1.5,
            ),
            Container(
              height: 30,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(width: 20.0, height: 100.0),
                RotateAnimatedTextKit(
                    isRepeatingAnimation: true,
                    text: ["LEARN", "LOVE", "LIVE"],
                    textStyle: TextStyle(
                        fontSize: 50.0,
                        letterSpacing: 2,
                        fontFamily: "Monospace",
                        fontWeight: FontWeight.w900,
                        color: Colors.yellow),
                    textAlign: TextAlign.start,
                    alignment:
                        AlignmentDirectional.topStart // or Alignment.topLeft
                    ),
                SizedBox(width: 20.0, height: 100.0),
                Text(
                  "IT",
                  style:
                      TextStyle(fontSize: 50.0, color: Colors.deepPurpleAccent),
                ),
              ],
            ),
          ],
        )));
  }
}
