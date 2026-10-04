import 'package:flutter/material.dart';
import 'package:practice_quiz_app/screens/screen1.dart';
void main(){
  runApp(SampleApp());
}

class SampleApp extends StatelessWidget {
  const SampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Screen1(),
    );
  }
}