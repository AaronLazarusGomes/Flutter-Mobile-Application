import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';

import './coreTeam.dart';
import './drawerList.dart';
import './change.dart';
import './show.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(Xenith());
}

class Xenith extends StatefulWidget {
  @override
  _Xenith createState() => _Xenith();
}

class _Xenith extends State<Xenith> {
  List<Show> imgList = [
    Show(
        img: './assets/Exhibition.png',
        title: 'Exhibition',
        des:
            'The Exhibition is an event filled with creative ideas by the talented students of St. Xaviers College.\n\n This event will take place on the 17th of January \'20 from 9:30am uptill 4:30pm in the X.I.M.R, G.C.R. The rules and regulations for the event can be found on the webpage under the \"Registrations\" tab.\n\n\n So... What are you waiting for? Click on the button below and register!'),
    Show(
        img: './assets/keith.jpg',
        title: 'Treasure Hunt',
        des:
            'The Treasure Hunt is one of the most hyped event in the college! \n\n Students all over Mumbai will be firecely racing to reach the finish line as the team who does so will be rewarded for all their efforts. Getting the answers to the clues and running all-over the college isn\'t an easy task! The event will start from 2:00pm in the Seminar Room on the 17th of January 2020 \n\n\n If you think your fast... Register by clicking the button below!!!'),
    Show(
        img: './assets/gameShow.png',
        title: 'Game Show',
        des:
            'The Game Show is a mind-boggler event. \n\nStudents who think they know how to start a business or become an enterpreneur should consider participating for this event. It challenges one to think in a business oriented manner when making certain decisions while playing. The event will start from 1:00pm in the SCAVI on the 17th of January 2020\n\n\nThink your up for it? Register by clicking on the button below!'),
    Show(
        img: './assets/lasertagw.jpg',
        title: 'Laser Tag',
        des:
            'The LASER TAG is easily the most hyped up event on the entire college grounds. \n\nWhy?\n Because St. Xaviers has never conducted such an event on the campus ever before. Students from all over Mumbai would form teams that will battle each other to win the ultimate prize of Glory!!! \nThe event will be on the 18th of January 2020 from 10am to 4pm in the B.C.R \n\n\n You think you can handle that type of pressure and precision while shooting lasers out of a gun? \n\n Click on the link below to register to play against your friends!!!'),
    Show(
        img: './assets/HACKATHON.png',
        title: 'Hackathon',
        des:
            'The Hackathon event is an event for those people who are the \"Real Coders\" of the programming world. \n\nYoungsters (Graduating students) from all over Mumbai who think they can program for long hours without giving up on finding the solution should really opt for this event. The event will take place on 18th January 2020 from 8am to 7pm in the M.Sc Lab of St. Xaviers School.\n\n\n Up for the programming challenge? Register by clicking on the button below!!!')
  ];

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
                    bottomRight: Radius.circular(80),
                  )),
                  expandedHeight: 500,
                  pinned: true,
                  backgroundColor: Colors.black,
                  floating: false,
                  snap: false,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Image.asset(
                      './assets/x.png',
                      scale: 2,
                    ),
                    title: Text(
                      'Xenith \'20',
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
                Container(
                  child: Center(
                    child: Text(
                      'E V E N T S',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          letterSpacing: 1),
                    ),
                  ),
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Center(
                    child: Text(
                      'For you',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 17),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Center(
                    child: Text(
                      'Tap and read!',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                  ),
                ),
                CarouselSlider(
                  autoPlay: true,
                  height: 250,
                  initialPage: 0,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                  items: imgList.map((imgs) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(color: Colors.green),
                          child: GestureDetector(
                              child: Image.asset(imgs.img, fit: BoxFit.fill),
                              onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) {
                                      return Change(
                                          imgs.img, imgs.title, imgs.des);
                                    }),
                                  )),
                        );
                      },
                    );
                  }).toList(),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                  child: Text(
                      'After much brain-storming and meticulous planning the \"Events\" team have come up with the above events that you will not want to miss at all. The schedule (which can be checked out on the main webpage by clicking the button below) was designed in such a way that you won\'t have to miss out on any event while attending another event.',
                      style: TextStyle(color: Colors.white, fontSize: 18, letterSpacing: 1, wordSpacing: 2)
                      ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
                    child: Text('PRESENTING',
                        style: TextStyle(
                            letterSpacing: 4,
                            color: Colors.white,
                            fontSize: 16)),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Text('THE',
                        style:
                            TextStyle(letterSpacing: 2, color: Colors.white)),
                  ),
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
                    child: Center(
                      child: Text(
                        'CORE TEAM \'20',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w600),
                      ),
                    )),
                Core(),
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
            child: ListView(
              children: <Widget>[
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
