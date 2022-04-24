import 'package:flutter/cupertino.dart';

import 'letter_box.dart';


class WordleRow extends StatelessWidget {
  final int wordSize;
  const WordleRow({Key? key, required this.wordSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final List<WordleLetterBox> boxes = List.empty(growable: true);
    for (int j = 0; j < wordSize; j++) {
      boxes.add(WordleLetterBox());
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: boxes,
    );
  }
}
