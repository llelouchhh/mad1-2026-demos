import 'package:flutter/material.dart';
import 'package:sample_navigation_app/screens/first_screen.dart';

void main(){
  runApp(SampleApp());
}

class SampleApp extends StatelessWidget {
  const SampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
    );
  }
}