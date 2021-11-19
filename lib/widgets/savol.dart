import 'package:flutter/material.dart';

class Savol extends StatelessWidget {
final String savol;
final List<Map<String,dynamic>>javoblar;
final Function savolgaJavobBerish;

Savol(this.savol, this.javoblar, this.savolgaJavobBerish);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          savol,
          style: const TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        ElevatedButton(
          onPressed:()=> savolgaJavobBerish(javoblar[0]
          ["togrimi"]),
          child: Text(
            javoblar[0]
            ["matn"],
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: ()=> savolgaJavobBerish(  javoblar[1]
          ["togrimi"]),
          child: Text(
            javoblar[1]
            ["matn"],
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: ()=> savolgaJavobBerish( javoblar[2]
          ["togrimi"]),
          child: Text(
            javoblar[2]
            ["matn"],
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: ()=> savolgaJavobBerish(  javoblar[3]
          ["togrimi"]),
          child: Text(
            javoblar[3]
            ["matn"],
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ],
    )
    ;
  }
}
