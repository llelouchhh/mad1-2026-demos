import 'package:flutter/material.dart';
import 'package:reminders_app/screens/main_screen.dart';

void main(){
  runApp(RemindersApp());
}

class RemindersApp extends StatelessWidget {
  const RemindersApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:MainScreen()
    );
  }
}