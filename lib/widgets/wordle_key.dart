import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WordleKey extends StatelessWidget {
  final String letter;

  const WordleKey(this.letter, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget keyCap;

    double width = 40;
    if (letter == "ENTER") {
      width = 60;
      keyCap = Text(letter, style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold));
    } else if (letter == "BACK") {
      width = 60;
      keyCap = Icon(Icons.backspace_outlined, size: 20);
    } else {
      keyCap = Text(letter, style: TextStyle(
        fontSize: 20,
          fontWeight: FontWeight.bold));
    }
    return Container(
        width: width,
        height: 55,
        alignment: Alignment.center,
        margin: EdgeInsets.all(2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
            color: Color.fromARGB(44, 44, 44, 44)),
        child: keyCap);
  }
}
