import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  // HomeScreen(this.email, {super.key});
  HomeScreen({super.key, required this.email});

  String email = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: Center(child: Text('Welcome $email')),
    );
  }
}