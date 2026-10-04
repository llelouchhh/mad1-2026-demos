import 'package:flutter/material.dart';
import 'package:student_task_manager/screens/home_screen.dart';

class AddTaskScreen extends StatefulWidget {
  AddTaskScreen({super.key , required this.tasks});

  List<String> tasks = [];

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  var inputTaskCtrl =  TextEditingController();

  void backToHomeScreen(ctx){
    Navigator.pop(
      ctx,
      MaterialPageRoute(
        builder: (_) => HomeScreen(tasks: widget.tasks)
      )
    );
  }

  void addTask(){
    print(inputTaskCtrl);
    if(inputTaskCtrl.text != "") widget.tasks.add(inputTaskCtrl.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: .stretch,
              children: [
                Text('Enter Task'),
                TextField(
                  controller: inputTaskCtrl,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                ElevatedButton(onPressed: (){
                  setState(() {
                    addTask();
                    backToHomeScreen(context);
                  });
                  
                }
                , 
                child: Text('Add'))
              ],
            ),
          ),
        )
      ),
    );
  }
}