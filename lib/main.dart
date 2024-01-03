import 'dart:ffi';
import 'questions.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Quiz());
}

class Quiz extends StatefulWidget {
  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<Icon> scoreKeeper = [];
  /*
  List<String> questions = [
    "Toronto is the capital of Canada",
  "US is geographically smaller than Brazil",
  "Water in the black sea is black "];
  List<bool> answers = [false, false, false];
  */

  int qNo = 0;

  // Question q1 = Question('Toronto is the capital of Canada', false);

  List<Question> questionBank = [
    Question(q:'Toronto is the capital of Canada', a: false),
    Question(q: 'US is geographically smaller than Brazil', a: false),
    Question(q: 'Water in the black sea is black', a: false),
    Question(q: 'Delhi is the capital of India', a: true)
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white70,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                        child: Text(
                            questionBank[qNo].questionText,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextButton(
                        onPressed: (){
                          setState(() {
                            if (qNo < questionBank.length){
                              if(questionBank[qNo].questionAnswer == true){
                                scoreKeeper.add(
                                  Icon(Icons.check, color: Colors.green,),
                                );
                              } else {
                                scoreKeeper.add(
                                  Icon(Icons.close, color: Colors.red,),
                                );
                              }
                              qNo = qNo + 1;
                            }

                          });
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.lightBlueAccent),
                        ),
                        child: Text(
                          "True",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                    ),
                  ),
                ),
                
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextButton(
                        onPressed: (){
                          setState(() {
                            if (qNo < questionBank.length){
                              if(questionBank[qNo].questionAnswer == false){
                                scoreKeeper.add(
                                  Icon(Icons.check, color: Colors.green,),
                                );
                              } else {
                                scoreKeeper.add(
                                  Icon(Icons.close, color: Colors.red,),
                                );
                              }
                              qNo = qNo + 1;
                            }
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.lightBlueAccent),
                        ),
                        child: Text(
                          "False",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                    ),
                  ),
                ),
                Row(
                  children: scoreKeeper,
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}

/* Padding

  Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Icon(Icons.check, color: Colors.green,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Icon(Icons.close, color: Colors.red,),
                    ),

 */