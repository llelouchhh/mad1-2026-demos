import 'package:flutter/material.dart';
import 'package:sample_navigation_app/screens/second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});


  void toSecondScreen(ctx){
    Navigator.push(
      ctx, 
      MaterialPageRoute(builder: 
      (_)=> SecondScreen()
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'This is first Screen'
        ),
      ),
      body: Center(
        child: Container(
          child: 
          ElevatedButton(onPressed: () {
            toSecondScreen(context);
          }
          , 
          child: Text(
            'go to Second Scree'
            )
          ),
        ),
      ),
    );
  }
}