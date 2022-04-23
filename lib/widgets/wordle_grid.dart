import 'dart:html';

import 'package:development/widgets/letter_box.dart';
import 'package:development/widgets/wordle_row.dart';
import 'package:flutter/material.dart';

const rows = 6;

class WordleGrid extends StatelessWidget {
  const WordleGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        WordleRow(),
        WordleRow(),
        WordleRow(),
        WordleRow(),
        WordleRow(),
        WordleRow()
      ],
    ));
  }
}
