import 'package:flutter/material.dart';

class ProfilePhoto extends StatelessWidget {
  final String _photoUrl;
  static const double _hPad = 16.0;

  ProfilePhoto(this._photoUrl);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.fromLTRB(_hPad, 32.0, _hPad, 4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(_photoUrl),
            radius: 60,
            backgroundColor: Colors.grey,
          ),
        ),
      ],
    );
  }
}