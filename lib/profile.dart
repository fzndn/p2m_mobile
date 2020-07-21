import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'sign_in.dart';
import 'style.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: NetworkImage(photoUrl),
                radius: 60,
                backgroundColor: Colors.transparent,
              ),
              SizedBox(height: 40),
              Text(
                'NAME',
                style: HeadTextStyle,
              ),
              Text(
                name,
                style: BodyTextStyle,
              ),
              SizedBox(height: 20),
              Text(
                'EMAIL',
                style: HeadTextStyle,
              ),
              Text(
                email,
                style: BodyTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}