
import 'package:flutter/material.dart';
class Natija extends StatelessWidget {
  final int natija;
  final int savollarUzunligi;
  final Function() qaytadanBoshlsh;

  Natija(this.natija, this.savollarUzunligi,this.qaytadanBoshlsh);


  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Text("Natija:$natija/$savollarUzunligi",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton.icon(onPressed: qaytadanBoshlsh,
              icon: Icon(Icons.restart_alt), label:
              Text("RESTART"),
            ),
          ],
        )
    );
  }
}
