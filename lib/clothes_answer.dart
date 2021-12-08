import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClothesAnswer extends StatelessWidget {
  String answerText;
  var tapped;
  ClothesAnswer(this.tapped,this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(5),
        child: ElevatedButton(
        child: Text(answerText,
        style: TextStyle(color: Colors.red)),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.green)),
        onPressed: tapped
    ));
  }
  
}