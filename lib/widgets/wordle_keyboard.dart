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
            WordleKey("q"),
            WordleKey("w"),
            WordleKey("e"),
            WordleKey("r"),
            WordleKey("t"),
            WordleKey("y"),
            WordleKey("u"),
            WordleKey("i"),
            WordleKey("o"),
            WordleKey("p"),
          ],
        ),
        Row(
          mainAxisSize:  MainAxisSize.min,
          children: [
            WordleKey("a"),
            WordleKey("s"),
            WordleKey("d"),
            WordleKey("f"),
            WordleKey("g"),
            WordleKey("h"),
            WordleKey("j"),
            WordleKey("k"),
            WordleKey("l")
          ],
        ),
        Row(
          mainAxisSize:  MainAxisSize.min,
          children: [
            WordleKey("ENTER"),
            WordleKey("z"),
            WordleKey("x"),
            WordleKey("c"),
            WordleKey("v"),
            WordleKey("b"),
            WordleKey("n"),
            WordleKey("m"),
            WordleKey("BACK"),
          ],
        )
      ],
    );
  }
}
