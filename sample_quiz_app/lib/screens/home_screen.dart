import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_quiz_app/screens/quiz_screen.dart';
import 'package:sample_quiz_app/screens/second_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void openQuiz(BuildContext ctx){
    // Navigator.push(
    //   ctx, 
    //   CupertinoPageRoute(
    //     builder: (_) =>
    //     SecondScreen(),
    //   )
    // );
    Navigator.push(ctx,
    (CupertinoPageRoute(
      builder: (_) =>
      SecondScreen())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Image.network('https://img.magnific.com/free-vector/vibrant-quiz-game-show-vector-illustration_1308-181014.jpg?semt=ais_hybrid&w=740&q=80'),
            Text(
              'Test your skills. \n Play now!',
              style: TextStyle(fontSize: 36, fontWeight: .w300),
              textAlign: .center,
            ),
            SizedBox(height: 22,),
            ElevatedButton.icon(
              onPressed: () => openQuiz(context), 
              label: Text('PLAY'),
            icon: Icon(Icons.playlist_add_check_circle),
            ),
          ],
        )),
    );
  }
}