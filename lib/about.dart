import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'drawerList.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Color.fromRGBO(51, 51, 50, 100),
            body: NestedScrollView(
              headerSliverBuilder: (BuildContext context, bool scrollable) {
                return <Widget>[
                  SliverAppBar(
                    shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(80),
                            bottomRight: Radius.circular(80))),
                    expandedHeight: 350,
                    pinned: true,
                    backgroundColor: Colors.black,
                    floating: false,
                    snap: false,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Image.asset(
                        './assets/x.png',
                        scale: 3.2,
                      ),
                      title: Text(
                        'About Us',
                        style: TextStyle(
                            color: Color.fromRGBO(255, 191, 0, 1),
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      centerTitle: true,
                    ),
                  )
                ];
              },
              body: ListView(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
                    child: Text(
                      'Xenith 2020 is the official Technological Fest of St. Xavier’s College Autonomous, Mumbai which aims to congregate innovation and technology with the help of esteemed professionals who showcase their thoughts and conflux their ideas and knowledge into meaningful insights enabling us to learn from their journey and appreciate the work done by them to benefit society. Xenith is a fest trying to bring the ever so growing technological world to students of all streams in an easy and mind-blowing manner. So, get ready to go on this fascinating yet advanced adventure into the land of future. The theme for this year is ‘Glitches to Perfection’. Keeping that in mind, over the course of two days we promise you a plethora of functions like Seminars, Exhibitions, Workshops, Games etc., amongst several other events and programs that will be conducted on campus. Through our theme for this year, we believe to create a medium through which we will be able to connect widely with our audience.',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          wordSpacing: 2,
                          letterSpacing: 1,
                          color: Colors.white),
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      RaisedButton(
                        color: Colors.blue,
                        child: Text(
                          'Visit Website',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w300),
                        ),
                        onPressed: () => launch('http://xenithfest.in'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            drawer: Drawer(
                elevation: 100,
                semanticLabel: 'Drawer is being opened',
                child: Container(
                    color: Colors.black,
                    child: ListView(children: <Widget>[
                      DrawerHeader(
                        child: Column(
                          children: <Widget>[
                            Image.asset('./assets/x.png', scale: 4.2),
                            Text(
                              'Glitches To Perfection',
                              style: TextStyle(
                                color: Color.fromRGBO(255, 191, 0, 1),
                                fontSize: 22,
                              ),
                            )
                          ],
                        ),
                      ),
                      DrawList()
                    ])))));
  }
}
