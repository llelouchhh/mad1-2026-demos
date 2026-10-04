import 'package:flutter/material.dart';
import 'package:sample_quiz_app/screens/home_screen.dart';
import 'package:sample_quiz_app/screens/quiz_screen.dart';

void main(){
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}