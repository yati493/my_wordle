import 'dart:math';

import 'package:development/data/wordle_repo.dart';
import 'package:development/providers/game_settings_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GameState {
  final List<String> validWords;
  final String correctWord;
  final GameSettings gameSettings;
  final List<String> attempts;
  final int attempted;

  GameState(
      {required this.validWords,
      required this.correctWord,
      required this.gameSettings,
      required this.attempts,
      required this.attempted});

  GameState clone(
      {List<String>? validWords,
      String? correctWord,
      List<String>? attempts,
      int? attempted}) {
    return GameState(
        validWords: validWords ?? this.validWords,
        correctWord: correctWord ?? this.correctWord,
        gameSettings: this.gameSettings,
        attempts: attempts ?? this.attempts,
        attempted: attempted ?? this.attempted);
  }
}

class GameStateNotifier extends StateNotifier<GameState> {
  final Random random = Random();

  GameStateNotifier(GameSettings settings)
      : super(GameState(
            validWords: [],
            correctWord: "wordle",
            gameSettings: settings,
            attempts: [],
            attempted: 0));

  Future<void> updateWords() async {
    final words = await loadWords(state.gameSettings.wordSize);
    state = state.clone(
        validWords: words,
        correctWord: words[random.nextInt(words.length - 1)]);
  }

  void newCorrectWord() {
    state = state.clone(
        correctWord:
            state.validWords[random.nextInt(state.validWords.length - 1)]);
  }

  void updateCurrentAttempt(String key) {

    final attempts = state.attempts;
    if(attempts.length <= state.attempted){
      attempts.add("");
    }
    var currentAttempt = attempts[state.attempted];

    if(key == "ENTER"){

      if(currentAttempt.length < state.gameSettings.wordSize){
        print("attempted word incomplete");
        return;
      }

      if(!state.validWords.contains(currentAttempt)){
        print("not in valid words");
        return;
      }

      state = state.clone(attempted:  state.attempted+1);

    } else if(key == "BACK"){
      if(currentAttempt.isEmpty){
        print("cant backspace on empty string");
        return;
      }
      currentAttempt = currentAttempt.substring(0, currentAttempt.length-1);
      attempts[state.attempted] = currentAttempt;
      state = state.clone(attempts:  attempts);

    } else {
      if(currentAttempt.length >= state.gameSettings.wordSize){
        print("Warning : word length breached");
        return;
      }
      currentAttempt += key;
      attempts[state.attempted] = currentAttempt;
      state = state.clone(attempts:  attempts);
    }

  }

}

final gameStateProvider =
    StateNotifierProvider<GameStateNotifier, GameState>((ref) {
  final settings = ref.watch(gameSettingsProvider);
  GameStateNotifier gameStateNotifier = GameStateNotifier(settings);
  gameStateNotifier.updateWords();
  return gameStateNotifier;
});
