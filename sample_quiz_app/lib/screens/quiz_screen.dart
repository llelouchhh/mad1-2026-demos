import 'package:flutter/material.dart';
import '../data/questions_list.dart';

class QuizScreen extends StatefulWidget {
  QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final QUESTIONS = questions;
  final ANSWERS = answers;
  int current_index = 0;
  int score = 0;
  bool isFinished = false;

  void checkAnswer(bool answer) {
    // if (answer == ANSWERS[current_index]) score++;
    // current_index++;
    score += answer == ANSWERS[current_index++] ? 1 : 0;
    if (current_index == questions.length) isFinished = true;
    setState(() {});
    print(score);
  }

  void nextQuestion() {
    current_index++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: isFinished
              ? Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Text('$score'),
                )
              : Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        QUESTIONS[current_index],
                        style: TextStyle(fontSize: 30, fontWeight: .w400),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                checkAnswer(true);
                              },
                              child: Text('TRUE'),
                            ),
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                checkAnswer(false);
                              },
                              child: Text('FALSE'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}