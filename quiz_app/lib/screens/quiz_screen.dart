import 'package:flutter/material.dart';
import '/models/questionAndAsnwers.dart';
import '/data/questions_and_answers_list.dart';
import 'dart:math';
class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {

  List<QuestionsAndAnswers> QUESTIONANDANSWER = qAndA.toList();
  int current_question = randomQuestion;
  int score = 0;
  int counter = 0;
  bool isFinished = false;
  String rating = "";
  @override
  Widget build(BuildContext context) {
    return isFinished? Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: .center,
            children: [
              Column(
                mainAxisAlignment: .center,
                children: [
                  Row(
                    children: [
                      Text(rating, style: TextStyle(fontSize: 40, fontWeight: .bold))
                    ],
                  ),
                  Row(
                    children: [
                      Text('$score/10', style: TextStyle(fontSize: 60, fontWeight: .bold))
                    ],
                  ),
                  Row(
                    children: [
                      ElevatedButton.icon(
                        onPressed: restart, 
                        label: Text('Play Again'),
                        icon: Icon(Icons.restart_alt_rounded),
                      )
                        
                    ],
                  )
                ],
              ),
            ],
          ),
        )
      ) 
    ): Scaffold(
      appBar: AppBar(
        title: Text('Quiz App', style: TextStyle(color: Colors.white),), 
        centerTitle: true, 
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            SizedBox(height: 15,),
            Text(QUESTIONANDANSWER[current_question].question, style: TextStyle(fontSize: 40),),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: (){
                      check(QUESTIONANDANSWER[current_question].choices[0]);
                      randomQ();
                    }, 
                    child: Text("A. " + QUESTIONANDANSWER[current_question].choices[0], style: TextStyle(color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: (){
                      check(QUESTIONANDANSWER[current_question].choices[1]);
                      randomQ();
                    }, 
                    child: Text("B. " + QUESTIONANDANSWER[current_question].choices[1], style: TextStyle(color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: (){
                      check(QUESTIONANDANSWER[current_question].choices[2]);
                      randomQ();
                    }, 
                    child: Text("C. " + QUESTIONANDANSWER[current_question].choices[2], style: TextStyle(color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: (){
                      check(QUESTIONANDANSWER[current_question].choices[3]);
                      randomQ();
                    }, 
                    child: Text("D. " + QUESTIONANDANSWER[current_question].choices[3], style: TextStyle(color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                      ),
                    ),
                  ),
                ),
              ],
            ),
            
          ],
        ),
      ),
    );
    
  }
  void randomQ(){
      QUESTIONANDANSWER.removeAt(current_question);
      counter++;
      isFinished = counter==10? true: false;
      current_question = random.nextInt(QUESTIONANDANSWER.length);
      setState(() {
      });
  }
  void check(String answer){
    if(answer == QUESTIONANDANSWER[current_question].correctAnswer){
      score++;
      rate();
    }
    print(score);
  }
  void restart(){
    QUESTIONANDANSWER = qAndA.toList();
    score = 0;
    counter = 0;
    isFinished = false;
    current_question = random.nextInt(QUESTIONANDANSWER.length);
    setState(() {
    });
  }

  void rate(){
    if(score > 0 && score< 6){
      rating = "You failed!";
    }else if (score > 5 && score < 10){
      rating = "That's good!";
    }else{
      rating = "Perfect!";
    }
  }
}