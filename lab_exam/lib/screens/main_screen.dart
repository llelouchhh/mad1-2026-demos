import 'package:flutter/material.dart';
import 'package:lab_exam/screens/cons_list_screen.dart';

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var textCtrl = TextEditingController();
  List<String> vowels = [];

  List<String> cons = [];

  void add(){
    setState(() {
      if(textCtrl.text.startsWith('a')|| textCtrl.text.startsWith('e')|| textCtrl.text.startsWith('i')|| textCtrl.text.startsWith('o')|| textCtrl.text.startsWith('u')){
      vowels.add(textCtrl.text);
    }else{
      cons.add(textCtrl.text);
    }
    textCtrl.clear();
    });
    
  }

  void toConsScreen(ctx){
    Navigator.push(ctx, 
    MaterialPageRoute(builder: (_) => ConsListScreen(cons: cons)));
  }

  void toVowelsScreen(ctx){
    Navigator.push(ctx, 
    MaterialPageRoute(builder: (_) => ConsListScreen(cons: cons)));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: .spaceBetween,
            children: [
              Column(
                children: [
                  TextField(
                    controller: textCtrl,
                  ),
                  SizedBox(height: 10,),
                  ElevatedButton(onPressed: ()=> add(), child: Text('Add')),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: 
                              vowels.map((item){
                                return Card(child: Text(item));
                              }
                            ).toList(),
                          ),
                        )
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: 
                              cons.map((item){
                                return Card(child: Text(item));
                              }
                            ).toList(),
                          ),
                        )
                      )   
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: .spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    toVowelsScreen(context);
                  }, child: Text('view')),
                  ElevatedButton(onPressed:  (){
                    toConsScreen(context);
                  }, child: Text('view'))
                ],
              )
              
            ],
          )
        ),
      )
    );
  }
}