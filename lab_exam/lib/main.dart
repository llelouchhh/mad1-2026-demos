import 'package:flutter/material.dart';
import 'package:lab_exam/screens/main_screen.dart';

void main(){
  runApp(SampleApp());
}

class SampleApp extends StatelessWidget {
  const SampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}