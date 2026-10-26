import 'package:flutter/material.dart';
import 'package:practice_alert_dialog/screens/sample_app_screen.dart';

void main(){
  runApp(SampleApp());
}

class SampleApp extends StatelessWidget {
  const SampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SampleAppScreen(),
    );
  }
}