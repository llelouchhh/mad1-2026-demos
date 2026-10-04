import 'package:flutter/material.dart';
import '/screens/quiz_screen.dart';

void main(){
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:QuizScreen()
    );
  }
}