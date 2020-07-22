import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'profile_photo.dart';
import 'sign_in.dart';
import 'text_section.dart';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ProfilePhoto(photoUrl),
            TextSection('NAMA LENGKAP', name),
            TextSection('EMAIL', email),
          ],
        ),
      ),
    );
  }
}