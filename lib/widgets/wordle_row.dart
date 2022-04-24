import 'package:flutter/cupertino.dart';

import 'letter_box.dart';


class WordleRow extends StatelessWidget {
  final int wordSize;
  final String wordString;
  final bool attempted;
  final String correctWord;
  const WordleRow({Key? key, required this.wordSize, required this.wordString, required this.attempted, required this.correctWord}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final List<WordleLetterBox> boxes = List.empty(growable: true);
    for (int j = 0; j < wordSize; j++) {

      var letter = "";
      if(wordString.length > j){
        letter = wordString[j];
      }
      boxes.add(WordleLetterBox( index: j, letter: letter,
        attempted:  attempted,
        correctWord: correctWord,
      ));

    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: boxes,
    );
  }
}
