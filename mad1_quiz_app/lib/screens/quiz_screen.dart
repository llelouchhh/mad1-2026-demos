import 'package:flutter/material.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text('Question'),
              Row(
                children: [
                  Expanded(
                    child: 
                  ElevatedButton(onPressed: null, child: Text('TRUE'))),
                  Expanded(
                    child:
                  ElevatedButton(onPressed: null, child: Text('FALSE')))
                ],
              )
              
            ],
          ),
        ),
      ),
    );
  }
}