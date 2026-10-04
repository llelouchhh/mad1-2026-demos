import 'package:flutter/material.dart';



class SampleScreen extends StatefulWidget {
  const SampleScreen({super.key});

  @override
  State<SampleScreen> createState() => _SampleScreenState();
}

class _SampleScreenState extends State<SampleScreen> {
  var boxColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              boxColor = Colors.amber;
            });
            print('hello');
            },
          child: Container(color: boxColor,
          height: 200, width: 200),
        )
      ),
    );
  }
}