import 'dart:html';

import 'package:development/widgets/letter_box.dart';
import 'package:development/widgets/wordle_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/game_settings_provider.dart';


class WordleGrid extends ConsumerWidget {
  const WordleGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final gameSettings = ref.watch(gameSettingsProvider);
    final wordsize = gameSettings.wordSize;
    final List<WordleRow> rows = List.empty(growable: true);
    for(int i =0; i<gameSettings.attempts ; i++){
      rows.add(WordleRow(wordSize: wordsize));
    }
    return Container(child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children:  rows,
    ));
  }
}
