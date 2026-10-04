import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: .spaceBetween,
            children: [
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Container(width: 150, height: 150, color:  Colors.blue),
                  Container(width: 150, height: 150, color:  Colors.red),
                ],
              ),
              Row(
                crossAxisAlignment: .end,
                mainAxisAlignment: .center,
                children: [
                  Container(width: 150, height: 150, color:  Colors.black, margin: EdgeInsets.fromLTRB(0, 0, 0, 0),),
                ],
              ),
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Container(width: 150, height: 150, color:  Colors.yellow),
                  Container(width: 150, height: 150, color:  Colors.brown),
                ],
              ),
              // Column(
              //   mainAxisAlignment: .center,
              //   children: [
              //     Container(width: 150, height: 150, color:  Colors.red, margin: EdgeInsets.fromLTRB(0, 190, 0, 190),),
              //   ],
              // )
            ],
          ),
        ),
      ),
    ),
  );
}