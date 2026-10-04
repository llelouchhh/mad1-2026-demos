import 'package:flutter/material.dart';

class DarkModeScreen extends StatefulWidget {
  DarkModeScreen({super.key});

  @override
  State<DarkModeScreen> createState() => _DarkModeScreenState();
}

class _DarkModeScreenState extends State<DarkModeScreen> {
  var colorTheme = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Dark Mode"),
        centerTitle: true,),
        body: Row(
          mainAxisAlignment: .center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  colorTheme = colorTheme == Colors.white ? Colors.black: Colors.white;
                });
                
              },
              child: Container(width: 100, height: 100, color: colorTheme, child: Text("Dark Mode", style: TextStyle(color: Colors.black),),)
            )
          ],
        ),
    );
  }
}

