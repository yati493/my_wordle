import 'package:development/widgets/wordle_key.dart';
import 'package:flutter/material.dart';

class WordleKeyBoard extends StatelessWidget {
  const WordleKeyBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisSize:  MainAxisSize.min,
          children: [
            WordleKey("Q"),
            WordleKey("W"),
            WordleKey("E"),
            WordleKey("R"),
            WordleKey("T"),
            WordleKey("Y"),
            WordleKey("U"),
            WordleKey("I"),
            WordleKey("O"),
            WordleKey("P"),
          ],
        ),
        Row(
          mainAxisSize:  MainAxisSize.min,
          children: [
            WordleKey("A"),
            WordleKey("S"),
            WordleKey("D"),
            WordleKey("F"),
            WordleKey("G"),
            WordleKey("H"),
            WordleKey("J"),
            WordleKey("K"),
            WordleKey("L")
          ],
        ),
        Row(
          mainAxisSize:  MainAxisSize.min,
          children: [
            WordleKey("ENTER"),
            WordleKey("Z"),
            WordleKey("X"),
            WordleKey("C"),
            WordleKey("V"),
            WordleKey("B"),
            WordleKey("N"),
            WordleKey("M"),
            WordleKey("BACK"),
          ],
        )
      ],
    );
  }
}
