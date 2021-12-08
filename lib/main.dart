import 'package:flutter/material.dart';
import 'package:lab2/clothes_answer.dart';
import 'package:lab2/clothes_question.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }

}
class _MyAppState extends State<MyApp> {

   _iWasTapped(){
    print("I was tapped");
    setState(() {
      if(_questionIndex < questions.length - 1)
        {
          _questionIndex+=1;

        }
    });

  }
  var questions = [
    {
      'question': 'Select shirt color',
      'answer': [
        'Red',
        'Blue',
        'Green']
    },
    {
      'question': 'Select pants color',
      'answer': [
        'White',
        'Brown',
        'Green']
    },
    {
      'question': 'Select sneakers color',
      'answer': [
        'Blue',
        'Green',
        'Brown']
    }
  ];
  var _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ClothesApp",
      home: Scaffold(
        appBar: AppBar(
          title: Text("ClothesApp")
        ),
        body: Column(
          children: [
            ClothesQuestion(questions[_questionIndex]['question'] as String),
            ...(questions[_questionIndex]['answer'] as List<String>).map((answer) {
              return ClothesAnswer(_iWasTapped,answer);
            })
          ],
        )
      )
    );
  }
}
