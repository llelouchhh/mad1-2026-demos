import 'package:flutter/material.dart';
import 'package:identification_quiz/models/questions.dart';
import 'package:identification_quiz/screens/score_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {

  List<String> QUESTIONS = questions;
  List<String> ANSWERS = answers;
  int currentQuestion = 0;
  int score = 0;
  var answerCtrl = TextEditingController();

  void check(){
    setState(() {
      if(answerCtrl.text == ANSWERS[currentQuestion]){
      score++;
      print(score);
      }
      answerCtrl.clear();
      currentQuestion != questions.length-1 ? currentQuestion++: toScoreScreen(context); 
      
    });
  }

  void toScoreScreen(ctx){
    Navigator.push(ctx, 
      MaterialPageRoute(
        builder: (_) => ScoreScreen(score: score)
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: .stretch,
            children: [
              Text(
                questions[currentQuestion], 
                style: TextStyle(
                  fontSize: 25
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: answerCtrl,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hint: Text('Enter your ansswer here')
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                onPressed: (){
                  check();
                }, 
                child: Text('Submit'))
            ],
          ),
        ),
      ),
    );
  }
}