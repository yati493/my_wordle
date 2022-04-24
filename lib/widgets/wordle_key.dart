import 'package:development/providers/game_state_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WordleKey extends ConsumerWidget {
  final String letter;

  const WordleKey(this.letter, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Widget keyCap;

    double width = 40;
    if (letter == "ENTER") {
      width = 60;
      keyCap = Text(letter,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold));
    } else if (letter == "BACK") {
      width = 60;
      keyCap = Icon(Icons.backspace_outlined, size: 20);
    } else {
      keyCap = Text(letter,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold));
    }
    return InkWell(
        onTap: () {
          ref.read(gameStateProvider.notifier).updateCurrentAttempt(letter);
        },
        child: Container(
            width: width,
            height: 55,
            alignment: Alignment.center,
            margin: EdgeInsets.all(2),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Color.fromARGB(44, 44, 44, 44)),
            child: keyCap));
  }
}
