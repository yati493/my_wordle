import 'package:flutter/material.dart';

class WordleLetterBox extends StatelessWidget {
  final int index;
  final String letter;
  final String correctWord;
  final bool attempted;

  const WordleLetterBox({Key? key, required this.index, required this.letter, required this.correctWord, required this.attempted}) : super(key: key);

  Color? getBgColor() {
    print("$correctWord $attempted");
    if(!attempted) return null;
    if(!correctWord.contains(letter)) return Color(0xFF757575);
    if(correctWord[index] == letter) return Color(0xFF66BB6A);
    return Color(0xFFFFD600);
  }

  BoxBorder? getBoxBorder(){
    if(!attempted) return Border.all(color: Colors.grey, width: 2);
    return Border.all(color: Colors.transparent, width: 2);
  }

  Color? getTextColor(){
    if(!attempted) return Colors.black87;
    return Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        border: getBoxBorder(),
        color: getBgColor(),
        borderRadius: BorderRadius.all(Radius.circular(4))
      ),
      child: Text(letter.toUpperCase(),
      style: TextStyle( fontWeight: FontWeight.bold , fontSize: 20, color: getTextColor()) ),

    );
  }
}
