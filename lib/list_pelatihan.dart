import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import 'style.dart';
import 'models/judul_pelatihan.dart';
import 'detail_pelatihan.dart';
import 'daftar_pelatihan.dart';

class ListPelatihan extends StatelessWidget {
  final String _idProgram;

  ListPelatihan(this._idProgram);

  @override
  Widget build(BuildContext context) {
    final listJudulPelatihan = JudulPelatihan.fetchAll();

    return Scaffold(
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: listJudulPelatihan.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                    height: 192,
                    width: double.maxFinite,
                    child: Card(
                      elevation: 5,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(
                              width: 2.0,
                              color: Colors.blue[900]
                            ),
                          ),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Text(
                                listJudulPelatihan[index].getNama(),
                                style: CardTitleTextStyle,
                              ),
                              SizedBox(height: 12),
                              Text(
                                listJudulPelatihan[index].getBiayaInStyle(),
                                style: CardBodyTextStyle,
                              ),
                              SizedBox(height: 8),
                              Text(
                                listJudulPelatihan[index].getJumlahHariInStyle(),
                                style: CardBodyTextStyle,
                              ),
                              ButtonBar(
                                children: <Widget>[
                                  FlatButton(
                                    child: const Text('Detail', style: FlatButtonTextStyle),
                                    onPressed: () => pushNewScreen(
                                      context,
                                      screen: DetailPelatihan(listJudulPelatihan[index]),
                                      withNavBar: false,
                                      pageTransitionAnimation: PageTransitionAnimation.slideUp
                                    ),
                                  ),
                                  FlatButton(
                                    child: const Text('Daftar', style: FlatButtonTextStyle),
                                    onPressed: () => pushNewScreen(
                                      context,
                                      screen: DaftarPelatihan(listJudulPelatihan[index]),
                                      withNavBar: false,
                                      pageTransitionAnimation: PageTransitionAnimation.slideUp
                                    )
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }
              ),
            ),
          ],
        )
      ),
    );
  }
}
