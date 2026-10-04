import 'package:flutter/material.dart';
import 'screens/sample_screen.dart';
// void main(){
//   runApp(SampleApp());
// }

// class SampleApp extends StatelessWidget {
//   const SampleApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: SampleScreen());
//   }
// }


// void main(){
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('MAD'), backgroundColor: Colors.amber,),
//           body: Row(
//             crossAxisAlignment: .start,
//             mainAxisAlignment: .end,
//             mainAxisSize: .max,
//             children: [
//               Container(width: 100, height: 100, color:  Colors.red),
//               Container(width: 100, height: 100, color: Colors.blue),
//             ],
//           ),
//         // body: Container(
//         //   color: Colors.blue, 
//         //   padding: .all(20),
//         //   margin: .all(20),
//         //   child: Text('hello'),
          
//         // ),
//         // body: Padding(
//         //   padding: .symmetric(horizontal: 10, vertical: 40),
//         //   child: Container(color: Colors.blue),
//         //   ),
//       )
//     )
//   );
// }
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
                  Container(width: 150, height: 150, color:  Colors.red),
                  Container(width: 150, height: 150, color:  Colors.red),
                ],
              ),
              Row(
                crossAxisAlignment: .end,
                mainAxisAlignment: .center,
                children: [
                  Container(width: 150, height: 150, color:  Colors.red, margin: EdgeInsets.fromLTRB(0, 0, 0, 0),),
                ],
              ),
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Container(width: 150, height: 150, color:  Colors.red),
                  Container(width: 150, height: 150, color:  Colors.red),
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