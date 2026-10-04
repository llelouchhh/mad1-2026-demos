import 'package:flutter/material.dart';
import 'package:sample_navigation_app/screens/first_screen.dart';
import 'package:sample_navigation_app/screens/second_screen.dart';

class ThirsdScreen extends StatelessWidget {
  const ThirsdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'This is third Screen'
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: .center,
          children: [
            ElevatedButton(onPressed: (){
              toSecondScreen(context);
            }, 
            child: Text('go to second Screen')),
            SizedBox(width: 10,),
            ElevatedButton(onPressed: (){
              toFirstScreen(context);
            }, 
            child: Text('go to first screen'))
          ],
        ),
      ),
    );
  }

  void toFirstScreen(ctx){
    Navigator.pushReplacement(ctx, 
    MaterialPageRoute(builder: (_)=> FirstScreen()));
  }

  void toSecondScreen(ctx){
    Navigator.pop(ctx, 
    MaterialPageRoute(builder: (_)=> SecondScreen()));
  }
}