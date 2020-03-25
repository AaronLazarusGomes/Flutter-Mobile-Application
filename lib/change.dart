import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'drawerList.dart';

String imgL;
String titleL;
String desL;

class Change extends StatefulWidget {
  Change(img, title, des) {
    imgL = img;
    titleL = title;
    desL = des;
  }

  @override
  Tchange createState() => Tchange();
}

class Tchange extends State<Change> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color.fromRGBO(51, 51, 50, 100),
          body: NestedScrollView(
              headerSliverBuilder: (BuildContext context, bool itWill) {
                return <Widget>[
                  SliverAppBar(
                    shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(80),
                            bottomRight: Radius.circular(80))),
                    backgroundColor: Colors.black,
                    pinned: true,
                    expandedHeight: 400,
                    flexibleSpace: FlexibleSpaceBar(
                      centerTitle: true,
                      title: Text(
                        titleL,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Color.fromRGBO(255, 191, 0, 1),
                        ),
                      ),
                      background: Image.asset(
                        imgL,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ];
              },
              body: ListView(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: Center(
                      child: Text(
                        'SUMMARY',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            letterSpacing: 3,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(15, 10, 10, 0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          '$desL',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: RaisedButton(
                          color: Colors.blue,
                          child: Text(
                            'Visit Website',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w300),
                          ),
                          onPressed: () => launch('https://xenithfest.in'),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
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
                  ])))),
    );
  }
}