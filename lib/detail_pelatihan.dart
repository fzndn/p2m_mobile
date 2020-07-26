import 'package:flutter/material.dart';

import 'models/judul_pelatihan.dart';
import 'text_section.dart';

class DetailPelatihan extends StatelessWidget {
  final String _judulPelatihanID;

  DetailPelatihan(this._judulPelatihanID);

  @override
  Widget build(BuildContext context) {
    final judulPelatihan = JudulPelatihan.fetchByID(this._judulPelatihanID);

    return Scaffold(
      appBar: AppBar(
        title: Text(judulPelatihan.getNama()),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          // TODO
        ]
      ),
    );
  }
}