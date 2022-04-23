import 'package:flutter/cupertino.dart';

import 'letter_box.dart';

const wordSize = 5;

class WordleRow extends StatelessWidget {
  const WordleRow({Key? key}) : super(key: key);

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
