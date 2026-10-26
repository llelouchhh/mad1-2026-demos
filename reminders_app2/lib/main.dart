import 'package:flutter/material.dart';
import 'package:reminders_app2/screens/reminder_screen.dart';

void main(){
  runApp(ReminderApp());
}

class ReminderApp extends StatelessWidget {
  const ReminderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ReminderScreen(),
    );
  }
}