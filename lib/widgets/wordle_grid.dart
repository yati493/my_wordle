
import 'package:development/providers/game_state_provider.dart';
import 'package:development/widgets/wordle_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/game_settings_provider.dart';


class WordleGrid extends ConsumerWidget {
  const WordleGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final gameSettings = ref.watch(gameSettingsProvider);
    final gameState = ref.watch(gameStateProvider);
    final wordsize = gameSettings.wordSize;
    final List<WordleRow> rows = List.empty(growable: true);
    for(int i =0; i<gameSettings.attempts ; i++){
      var word = "";
      if(gameState.attempts.length > i){
        word = gameState.attempts[i];
      }
      var attempted = false;
      if(gameState.attempted > i){
        attempted = true;
      }
      rows.add(WordleRow(wordSize: wordsize, wordString:word, attempted: attempted, correctWord: gameState.correctWord, ));
    }
    return Container(child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children:  rows,
    ));
  }
}
