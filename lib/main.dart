import 'package:flutter/material.dart';
import './widgets/savol.dart';
import './widgets/Natija.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  List<Map<String, dynamic>> SavollarVaJavoblar = [
    {
      "savol": "1. What--- your name?",
      "javoblar": [
        {"matn": "are", "togrimi": false},
        {"matn": "is", "togrimi": true},
        {"matn": "hello", "togrimi": false},
        {"matn": "tom", "togrimi": false},
      ],
    },
    {
      "savol": "2. Who--- you?",
      "javoblar": [
        {"matn": "hi", "togrimi": false},
        {"matn": "me", "togrimi": false},
        {"matn": "are", "togrimi": true},
        {"matn": "Mike", "togrimi": false},
      ],
    },
    {
      "savol": "3. Where --- she from?",
      "javoblar": [
        {"matn": "me", "togrimi": false},
        {"matn": "cat", "togrimi": false},
        {"matn": "black", "togrimi": false},
        {"matn": "is", "togrimi": true},
      ],
    },
  ];

  int hozirgiSavolRaqami = 0;
  int natija = 0;

  void answerquestion(bool togrimi) {
    setState(() {
      hozirgiSavolRaqami = hozirgiSavolRaqami + 1;
      if (togrimi) {
        natija++;
      }
    });
  }

  void qaytadanBoshlash() {
    setState(() {
      hozirgiSavolRaqami = 0;
      natija = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Ingliz tili quiz"),
        ),
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: hozirgiSavolRaqami < SavollarVaJavoblar.length
                ? Savol(
                    SavollarVaJavoblar[hozirgiSavolRaqami]["savol"],
                    SavollarVaJavoblar[hozirgiSavolRaqami]["javoblar"],
                    answerquestion)
                : Natija(
                    natija,
                    SavollarVaJavoblar.length,
                    qaytadanBoshlash,
                  )),
      ),
    );
  }
}
