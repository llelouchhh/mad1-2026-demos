import 'package:flutter/material.dart';
import 'screens/screens_dark_mode.dart';

void main(){
  runApp(DarkModeApp());
}

class DarkModeApp extends StatelessWidget {
  const DarkModeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:DarkModeScreen()
    );
  }
}