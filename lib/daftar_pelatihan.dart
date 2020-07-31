import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import 'models/judul_pelatihan.dart';
import 'theme/style.dart';
import 'text_section.dart';
import 'home.dart';

final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();

class DaftarPelatihan extends StatelessWidget {
  final JudulPelatihan _judulPelatihan;

  DaftarPelatihan(this._judulPelatihan);

  @override
  Widget build(BuildContext context) {
    final judulPelatihan = this._judulPelatihan;

    return Scaffold(
      appBar: AppBar(
        title: Text("Daftar Pelatihan"),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            FormBuilder(
              key: _fbKey,
              initialValue: {
                'date' : DateTime.now(),
                'accept_terms' : false,
              },
              autovalidate: true,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text('Judul Pelatihan', style: HeadTextStyle),
                  SizedBox(height: 8.0),
                  Text(judulPelatihan.getNama(), style: BodyTextStyle),
                  SizedBox(height: 16.0),
                  Text('Biaya Pelatihan', style: HeadTextStyle),
                  SizedBox(height: 8.0),
                  Text(judulPelatihan.getBiayaInStyle(), style: BodyTextStyle),
                  SizedBox(height: 16.0),
                  Text('Tanggal Pelatihan', style: HeadTextStyle),
                  FormBuilderDropdown(
                    attribute: 'tanggal',
                    hint: Text('Pilih tanggal pelatihan', style: HintTextStyle),
                    validators: [FormBuilderValidators.required()],
                    items: ['Senin', 'Selasa', 'Rabu']
                      .map((e) => DropdownMenuItem(
                      value: e,
                      child: Text('$e', style: BodyTextStyle),
                    )).toList(),
                  ),
                  SizedBox(height: 16.0),
                  Text('Fasilitas', style: HeadTextStyle),
                  SizedBox(height: 8.0),
                  Row(
                    children: <Widget>[
                      Icon(Icons.check_circle, color: Colors.black),
                      SizedBox(width: 4.0),
                      Text('Materi pelatihan (video dan modul)', style: BodyTextStyle)
                    ],
                  ),
                  SizedBox(height: 4.0),
                  Row(
                    children: <Widget>[
                      Icon(Icons.check_circle, color: Colors.black),
                      SizedBox(width: 4.0),
                      Text('Assessment (kuis dan studi kasus)', style: BodyTextStyle)
                    ],
                  ),
                  SizedBox(height: 4.0),
                  Row(
                    children: <Widget>[
                      Icon(Icons.check_circle, color: Colors.black),
                      SizedBox(width: 4.0),
                      Text('e-Sertifikat', style: BodyTextStyle)
                    ],
                  ),
                  SizedBox(height: 16.0),
                  FormBuilderCheckbox(
                    label: RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: 'Saya menyetujui ', style: BodyTextStyle),
                          TextSpan(text: 'syarat dan ketentuan', style: FlatButtonTextStyle),
                          TextSpan(text: ' yang berlaku', style: BodyTextStyle)
                        ]
                      ),
                    ),
                    attribute: 'accept_term_switch',
                    validators: [
                      FormBuilderValidators.requiredTrue(
                        errorText: 'Anda harus menyetujui untuk mendaftar'
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  color: Colors.blue[900],
                  disabledColor: Colors.white70,
                  textColor: Colors.white,
                  disabledTextColor: Colors.grey,
                  elevation: 5,
                  disabledElevation: 0,
                  child: Text('Daftar'),
                  onPressed: () {
                    if (_fbKey.currentState.saveAndValidate()) {

                    }
                  },
                ),
              ]
            ),
          ],
        )
      ),
    );
  }
}