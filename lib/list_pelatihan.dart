import 'package:flutter/material.dart';

import 'models/judul_pelatihan.dart';

class ListPelatihan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final listPelatihan = JudulPelatihan.fetchAll();

    return Scaffold(
      body: ListView(
        children: listPelatihan
            .map((judulPelatihan) => GestureDetector(
              child: Text(judulPelatihan.nama),
              onTap: () => _onJudulPelatihanTap(context, judulPelatihan.id),
            ))
            .toList(),
      ),
    );
  }

  _onJudulPelatihanTap(BuildContext context, String judulPelatihanID) {

  }
}
