import 'package:development/providers/game_settings_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WordleTitleBar extends StatelessWidget {
  const WordleTitleBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        WordAttemptsToggle(),
        Text("YATI's WORDLE",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        WordSizeToggle()
      ],
    ));
  }
}

class WordSizeToggle extends ConsumerWidget {
  const WordSizeToggle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameSettings = ref.watch(gameSettingsProvider);
    final gameSettingsNotifier = ref.read(gameSettingsProvider.notifier);

    void _updateGameSize() {
      var wordSize = 5;
      if (gameSettings.wordSize == 4) wordSize = 5;
      if (gameSettings.wordSize == 5) wordSize = 6;
      if (gameSettings.wordSize == 6) wordSize = 4;
      gameSettingsNotifier.updateWordSize(wordSize);
    }

    return Container(
      child: OutlinedButton(
        child: Text(gameSettings.wordSize.toString()),
        onPressed: _updateGameSize,
      ),
      margin: EdgeInsets.fromLTRB(40, 0, 0, 0),
    );
  }
}

class WordAttemptsToggle extends ConsumerWidget {
  const WordAttemptsToggle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameSettings = ref.watch(gameSettingsProvider);
    final gameSettingsNotifier = ref.read(gameSettingsProvider.notifier);

    void _updateAtemptsSize() {
      var attemptSize = 6;
      if (gameSettings.attempts == 4) attemptSize = 5;
      if (gameSettings.attempts == 5) attemptSize = 6;
      if (gameSettings.attempts == 6) attemptSize = 4;
      gameSettingsNotifier.updateAttempts(attemptSize);
    }

    String text;
    switch (gameSettings.attempts) {
      case 6:
        text = "EASY";
        break;
      case 5:
        text = "MEDIUM";
        break;
      case 4:
        text = "HARD";
        break;
      default:
        text = "EASY";
    }

    return Container(
      child: OutlinedButton(
        child: Text(text),
        onPressed: _updateAtemptsSize,
      ),
      margin: EdgeInsets.fromLTRB(0, 0, 40, 0),
    );
  }
}
