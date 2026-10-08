import 'package:flutter/material.dart';
import 'package:identification_quiz/screens/home_screen.dart';

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