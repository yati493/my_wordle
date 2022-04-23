import 'package:flutter/material.dart';

class WordleLetterBox extends StatelessWidget {
  const WordleLetterBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.green, width: 2)
      )
    );
  }
}
