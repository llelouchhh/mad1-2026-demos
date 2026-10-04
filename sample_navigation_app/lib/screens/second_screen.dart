import 'package:flutter/material.dart';
import 'package:sample_navigation_app/screens/first_screen.dart';
import 'package:sample_navigation_app/screens/third_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'This is second Screen'
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: .center,
          children: [
            ElevatedButton(onPressed: (){
              toThirdScreen(context);
            }, 
            child: Text('go to third Screen')),
            SizedBox(width: 10,),
            ElevatedButton(onPressed: (){
              toFirstScreen(context);
            }, 
            child: Text('go to First screen'))
          ],
        ),
      ),
    );
  }

  void toThirdScreen(ctx){
    Navigator.push(ctx, 
    MaterialPageRoute(builder: (_)=> ThirsdScreen()));
  }

  void toFirstScreen(ctx){
    Navigator.pop(ctx, 
    MaterialPageRoute(builder: (_)=> FirstScreen()));
  }
}