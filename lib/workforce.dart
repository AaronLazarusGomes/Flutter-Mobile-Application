import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'drawerList.dart';

class WorkForce extends StatefulWidget {
  @override
  _WorkForceState createState() => _WorkForceState();
}

class _WorkForceState extends State<WorkForce> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Color.fromRGBO(51, 51, 50, 100),
            body: NestedScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                headerSliverBuilder: (BuildContext context, bool scrollable) {
                  return <Widget>[
                    SliverAppBar(
                      shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(80),
                            bottomRight: Radius.circular(80))),
                      automaticallyImplyLeading: true,
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
                          'WorkForce',
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
                  physics: const AlwaysScrollableScrollPhysics(),
                  children: <Widget>[
                    Center(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(10, 0, 10, 20),
                        child: Text(
                          'The WorkForce turns the Fest into a reality.',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                    Center(
                        child: Container(
                      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: Text(
                        'PRESENTING',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.white,
                            letterSpacing: 3),
                      ),
                    )),
                    Center(
                        child: Container(
                      margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
                      child: Text(
                        'COMPUTERS',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Colors.white,
                            letterSpacing: 3),
                      ),
                    )),
                    Center(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: Image.asset('./assets/comps.jpg'),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(10, 5, 10, 20),
                        child: Text(
                          'The Department of Computers is solely responsible for popularizing the Fest over the Internet and serves the largest crowd. The Website and this application was made possible through the hard-work of this Department!',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                    Center(
                        child: Container(
                      margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
                      child: Text(
                        'CREATIVES n\' PR',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Colors.white,
                            letterSpacing: 2),
                      ),
                    )),
                    Center(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: Image.asset('./assets/pr.JPG'),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(10, 5, 10, 20),
                        child: Text(
                          'The Department of Creatives and Public Relations are majorly responsible for desiging and creating the Logo of the Fest along with the posters and pictures that we all enjoy looking at!',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                    Center(
                        child: Container(
                      margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
                      child: Text(
                        'MARKETING n\' FINANCE',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Colors.white,
                            letterSpacing: 3),
                      ),
                    )),
                    Center(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: Image.asset('./assets/fm.jpg'),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(10, 5, 10, 20),
                        child: Text(
                          '\"Show me the MONEY\". The Department of Marketing and Finance is THE most important Department of all, because if they don\'t perform everyone kisses the entire Fest GOOD-BYE!',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                    Center(
                        child: Container(
                      margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
                      child: Text(
                        'EVENTS',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Colors.white,
                            letterSpacing: 3),
                      ),
                    )),
                    Center(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: Image.asset('./assets/events.jpg'),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(10, 5, 10, 20),
                        child: Text(
                          'The Department of Events (highly dependent on Marketing) is the core of creating an interesting and crowd pulling Fest. They meticulously plan out each and every detail of the Fest to Perfection.',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                    Center(
                        child: Container(
                      margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
                      child: Text(
                        'VENUE MANAGEMENT',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Colors.white,
                            letterSpacing: 3),
                      ),
                    )),
                    Center(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: Image.asset('./assets/venman.jpg'),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(10, 5, 10, 20),
                        child: Text(
                          'The Department of Venue Management is solely resposible for giving the charisma to the Fest. All the logistics (heavy lifting), Sound System and Assistance support is handled by them.',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
                          child: RaisedButton(
                            color: Colors.blue,
                            child: Text(
                              'Visit Website',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300),
                            ),
                            onPressed: () => launch('http://xenithfest.in'),
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
                    ])))));
  }
}