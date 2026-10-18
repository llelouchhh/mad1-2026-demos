import 'package:flutter/material.dart';

class ConsListScreen extends StatelessWidget {
  ConsListScreen({super.key, required this.cons});
  var cons = [];

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
                  children: cons.map((item){
                    return Card(child: Text(item),);
                  }).toList(),
                ),
              ))
          ],
        )),
    );
  }
}