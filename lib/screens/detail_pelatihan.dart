import 'package:flutter/material.dart';

import '../models/judul_pelatihan.dart';
import '../theme/style.dart';

class DetailPelatihan extends StatelessWidget {
  final JudulPelatihan _judulPelatihan;

  DetailPelatihan(this._judulPelatihan);

  @override
  Widget build(BuildContext context) {
    final judulPelatihan = this._judulPelatihan;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            tabs: <Widget>[
              Text("Deskripsi", style: TabTextStyle),
              Text("Kompetensi", style: TabTextStyle),
              Text("Agenda", style: TabTextStyle),
              Text("Sasaran", style: TabTextStyle)
            ],
          ),
          title: Text(judulPelatihan.getNama()),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
              child: Text(judulPelatihan.getDeskripsi(), style: BodyTextStyle),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
              child: Text(judulPelatihan.getKompetensi(), style: BodyTextStyle),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
              child: Text(judulPelatihan.getAgenda(), style: BodyTextStyle),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
              child: Text(judulPelatihan.getSasaran(), style: BodyTextStyle),
            ),
          ],
        ),
      )
    );
  }
}