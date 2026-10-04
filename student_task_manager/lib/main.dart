import 'package:flutter/material.dart';
import 'package:student_task_manager/screens/home_screen.dart';

void main(){
  runApp(TaskManagerApp());
}

class TaskManagerApp extends StatelessWidget {
  const TaskManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}