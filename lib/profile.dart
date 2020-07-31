import 'package:flutter/material.dart';

import 'profile_photo.dart';
import 'sign_in.dart';
import 'style.dart';
import 'text_section.dart';

class Profile extends StatefulWidget {
  Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            ProfilePhoto(photoUrl),
            SizedBox(height: 10),
            FlatButton(
              child: const Text("EDIT PROFIL", style: FlatButtonTextStyle),
              onPressed: () => {},
            ),
            TextSection('NAMA LENGKAP', name),
            TextSection('EMAIL', email),
            TextSection('NOMOR HP', "0812-3456-7890"),
            TextSection('TEMPAT LAHIR', "Pekopon"),
            TextSection('TANGGAL LAHIR', "28 Februari 1998"),
            TextSection('ALAMAT', "Jl. Neptunus no.8, Galaksi Bima Sakti"),
          ],
        ),
      ),
    );
  }
}