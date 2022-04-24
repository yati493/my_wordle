import 'package:development/widgets/wordle_grid.dart';
import 'package:development/widgets/wordle_keyboard.dart';
import 'package:development/widgets/wordle_title_bar.dart';
import 'package:flutter/material.dart';

class WordlePage extends StatelessWidget {
  const WordlePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            WordleTitleBar(),
            WordleGrid(),
            WordleKeyBoard()
          ],
        ),
      ),
    );
  }
}
