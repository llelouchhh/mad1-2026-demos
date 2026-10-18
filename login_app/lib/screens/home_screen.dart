import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key, required this.user});
  String user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('PSU portal'),),
      body: Center(
        child: Text('Welcome! ' + user),
      ),
    );
  }
}