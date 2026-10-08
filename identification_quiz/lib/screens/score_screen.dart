import 'package:flutter/material.dart';
import 'package:identification_quiz/screens/home_screen.dart';
import 'package:identification_quiz/screens/quiz_screen.dart';

class ScoreScreen extends StatelessWidget {
  ScoreScreen({super.key, required this.score});
  int score;

  void toHomeScreen(ctx){
    Navigator.pushReplacement(
      ctx, 
      MaterialPageRoute(builder: (_) => HomeScreen()
      )
    );
  }

  void playAgain(ctx){
    Navigator.pushReplacement(ctx, 
      MaterialPageRoute(builder: (_) => QuizScreen()
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amberAccent,),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text(score.toString() +'/3', style: TextStyle(fontSize: 50, fontWeight: .bold),),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: .center,
              children: [
                ElevatedButton(
                onPressed: (){
                  playAgain(context);
                },
                 child: Text('Play again')
                ),
                SizedBox(width: 10,),
                ElevatedButton(
                  onPressed: (){
                    toHomeScreen(context);
                  }, 
                  child: Text('Home')
                )
              ]
            )
          ],
        ),
      ),
    );
  }
}