import 'package:flutter/material.dart';

import '../models/program.dart';
import '../theme/style.dart';
import 'list_pelatihan.dart';

class ListProgram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final listProgram = Program.fetchAll();

    return Scaffold(
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: listProgram.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                    height: 100,
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
                        child: InkWell(
                          splashColor: Colors.blue[900].withAlpha(30),
                          onTap: () => _onProgramTap(context, listProgram[index].getID()),
                          child: Container(
                            padding: EdgeInsets.all(7.0),
                            child: Text(
                              listProgram[index].getNama(),
                              style: CardTitleTextStyle,
                            ),
                          )
                        )
                      ),
                    ),
                  );
                }
              ),
            )
          ],
        ),
      ),
    );
  }

  _onProgramTap(BuildContext context, String id) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return ListPelatihan(id);
        }
      )
    );
  }
}
