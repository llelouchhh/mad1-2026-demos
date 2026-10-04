import 'dart:math';

import 'package:flutter/material.dart';

class RollDiceScreen extends StatefulWidget {
  const RollDiceScreen({super.key});

  @override
  State<RollDiceScreen> createState() => _RollDiceScreenState();
}

class _RollDiceScreenState extends State<RollDiceScreen> {
  List<String> diceFaces = [
    'https://cdn.pixabay.com/photo/2014/04/03/10/24/one-310338_1280.png',
    'https://tse3.mm.bing.net/th/id/OIP.9VHNACBKsHPKKYOHYSj9KQHaHU?r=0&rs=1&pid=ImgDetMain&o=7&rm=3',
    'https://tse4.mm.bing.net/th/id/OIP.cgLatPLccg0KNbMk0riQqQHaHU?r=0&rs=1&pid=ImgDetMain&o=7&rm=3',
    'https://tse1.mm.bing.net/th/id/OIP.jBP-NNX19x38SEm66Yb5HgHaHU?r=0&rs=1&pid=ImgDetMain&o=7&rm=3',
    'https://tse1.explicit.bing.net/th/id/OIP.H_i4Y47W-QM9gTKOoBFSHwHaHU?r=0&rs=1&pid=ImgDetMain&o=7&rm=3',
    'https://tse4.mm.bing.net/th/id/OIP.p7EjvCvSzRUHgfD56zV4SwHaHU?r=0&rs=1&pid=ImgDetMain&o=7&rm=3',
    'https://static.vecteezy.com/system/resources/previews/060/153/558/non_2x/picturesque-elegant-dice-six-sided-showing-different-numbers-no-background-with-transparent-background-precision-free-png.png'
  ];

  int activeFace = 6;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.purple,
        child: SafeArea
        (child: Column(
          mainAxisAlignment: .center,
          children: [
            Text(
              'Roll dice',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
              ),
              SizedBox(
                height: 22,
              ),
              Image.network(
                diceFaces[activeFace]
              ),
              Text(
                '${activeFace + 1}',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 22,
              ),
              ElevatedButton(
                onPressed: () {
                  print('hello');
                  setState(() {
                    activeFace = Random().nextInt(6);
                  });
                }, 
                child: Text(
                  'Roll'
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}