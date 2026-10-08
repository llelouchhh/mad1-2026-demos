import 'package:flutter/material.dart';
import 'package:identification_quiz/main.dart';
import 'package:identification_quiz/screens/quiz_screen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void goToQuizScreen(ctx){
    Navigator.push(ctx, 
      MaterialPageRoute(
        builder: 
        (_) => QuizScreen()
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: .center,
              children: [
                Image.network("https://play-lh.googleusercontent.com/BEhb_P0YRzEK8yf14falf9l9ZNGm1Dinn0aoTJPkBWZPLTyM6aRan6-lGRgeQOxv5TzhEG_H1AU75lXmd1P2UA", height: 250, width: 250,),
                SizedBox(height: 10,),
                ElevatedButton(
                onPressed: (){
                  goToQuizScreen(context);
                }, 
                child: Text('Take quiz'),
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}