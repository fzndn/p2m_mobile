import 'package:flutter/material.dart';

import '../theme/style.dart';

class TextSection extends StatelessWidget {
  final String _head;
  final String _body;
  static const double _hPad = 16.0;

  TextSection(this._head, this._body);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.fromLTRB(_hPad, 28.0, _hPad, 4.0),
          child: Text(_head, style: HeadTextStyle),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(_hPad, 4.0, _hPad, 8.0),
          child: Text(_body, style: BodyTextStyle),
        )
      ],
    );
  }
  
  
}