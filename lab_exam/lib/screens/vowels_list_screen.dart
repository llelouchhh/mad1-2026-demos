import 'package:flutter/material.dart';

class VowelsListScreen extends StatelessWidget {
  VowelsListScreen({super.key, required this.vowels});
  var vowels = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: vowels.map((item){
                    return Card(child: Text(item),);
                  }).toList(),
                ),
              ))
          ],
        )),
    );
  }
}