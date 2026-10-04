import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_quiz_app/screens/second_screen.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  int counter = 0;
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            child: 
              // Image.asset("images/quiz-img.jpg"),
              ElevatedButton.icon(onPressed: (){
                nextScreen(context);
              }, 
              icon: Icon(Icons.add),
              label: Text('Go to Second Page'),
            ),
          ),
        ),
      ),
    );
  }
  void addCount(){
    counter++;
    setState(() {
      
    });
  }
  void nextScreen(BuildContext ctx){
    Navigator.push(ctx, 
    CupertinoPageRoute(builder: (_) => SecondScreen()
    )
  );
  }
}