import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

class Core extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
              width: 170,
              height: 170,
              child: GradientCard(
                elevation: 100,
                gradient: Gradients.backToFuture,
                child: Column(
                  children: <Widget>[
                    Image.asset('./assets/x.png', scale: 4),
                    Text('Rachana P.',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w600)),
                    Text('(Staff In-charge)',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w500))
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 50, 10),
              width: 150,
              height: 170,
              child: GradientCard(
                elevation: 100,
                gradient: Gradients.backToFuture,
                child: Column(
                  children: <Widget>[
                    Image.asset('./assets/x.png', scale: 4),
                    Text('Chirag J.',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w600)),
                    Text('(Chairperson)',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w500))
                  ],
                ),
              ),
            ),
            Container(
              width: 150,
              height: 170,
              child: GradientCard(
                elevation: 100,
                gradient: Gradients.backToFuture,
                child: Column(
                  children: <Widget>[
                    Image.asset('./assets/x.png', scale: 4),
                    Text('Aaron G.',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w600)),
                    Text('(Head-Comps)',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w500))
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 50, 10),
              width: 150,
              height: 170,
              child: GradientCard(
                elevation: 100,
                gradient: Gradients.backToFuture,
                child: Column(
                  children: <Widget>[
                    Image.asset('./assets/x.png', scale: 4),
                    Text('Torsten F.',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w600)),
                    Text('(Head-Venman)',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w500))
                  ],
                ),
              ),
            ),
            Container(
              width: 150,
              height: 170,
              child: GradientCard(
                elevation: 100,
                gradient: Gradients.backToFuture,
                child: Column(
                  children: <Widget>[
                    Image.asset('./assets/x.png', scale: 4),
                    Text('Ajit D.',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w600)),
                    Text('(Head-Marketing)',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w500))
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 50, 10),
              width: 150,
              height: 170,
              child: GradientCard(
                elevation: 100,
                gradient: Gradients.backToFuture,
                child: Column(
                  children: <Widget>[
                    Image.asset('./assets/x.png', scale: 4),
                    Text('Cellestina L.',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w600)),
                    Text('(Head-Creatives)',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w500))
                  ],
                ),
              ),
            ),
            Container(
              width: 150,
              height: 170,
              child: GradientCard(
                elevation: 100,
                gradient: Gradients.backToFuture,
                child: Column(
                  children: <Widget>[
                    Image.asset('./assets/x.png', scale: 4),
                    Text('Anshita G.',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w600)),
                    Text('(Head-Events)',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w500))
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    ));
  }
}