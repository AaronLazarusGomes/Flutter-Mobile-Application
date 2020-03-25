import 'package:flutter/material.dart';


import './sponsors.dart';
import './workforce.dart';
import './about.dart';

class DrawList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
            leading: Icon(
              Icons.build,
              color: Colors.white,
            ),
            title: Text(
              'WorkForce',
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
            onTap: () {
              //print('object');
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => new WorkForce()),
              );
            }),
        ListTile(
            leading: Icon(
              Icons.supervisor_account,
              color: Colors.white,
            ),
            title: Text(
              'Sponsors',
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
            onTap: () {
              //print('object');
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => new Sponsors()),
              );
            }),
        ListTile(
            leading: Icon(
              Icons.account_circle,
              color: Colors.white,
            ),
            title: Text(
              'About Us',
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
            onTap: () {
              //print('object');
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => new About()),
              );
            }),
        
      ],
    );
  }
}