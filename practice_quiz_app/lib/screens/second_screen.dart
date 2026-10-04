import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_quiz_app/screens/screen1.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            child: ElevatedButton.icon(
              onPressed: () => backToFirstScreen(context),
              label: Text('Back'),
              icon: Icon(Icons.back_hand), 
            ),
          ),
        )),
    );
  }
  void backToFirstScreen(ctx){
    Navigator.pop(ctx,
      CupertinoPageRoute(
        builder: (_) => Screen1()
      )
    );
  }
}