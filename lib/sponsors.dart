import 'package:flutter/material.dart';

import 'drawerList.dart';

class Sponsors extends StatefulWidget {
  @override
  _SponsorsState createState() => _SponsorsState();
}

class _SponsorsState extends State<Sponsors> {
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
                        'Sponsors',
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
                          'Our Sponsors who believed in US!',
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
                        'HPCL',
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
                        child: Image.asset('./assets/hpcl1.png'),
                      ),
                    ),
                    Center(
                        child: Container(
                      margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
                      child: Text(
                        'Kiabza',
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
                        child: Image.asset('./assets/kia1.png'),
                      ),
                    ),
                    Center(
                        child: Container(
                      margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
                      child: Text(
                        'IDP',
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
                        child: Image.asset('./assets/idp1.png'),
                      ),
                    ),
                    Center(
                        child: Container(
                      margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
                      child: Text(
                        'IIDE',
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
                        child: Image.asset('./assets/IIDElogo.png'),
                      ),
                    ),
                  ]
                )
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