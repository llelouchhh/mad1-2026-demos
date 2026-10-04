import 'package:flutter/material.dart';
import 'package:student_task_manager/screens/add_task_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key, tasks=null});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> tasks = [];
  
  void goToAddTaskScreen(ctx){
    Navigator.push(
      ctx, 
      MaterialPageRoute(
        builder: (_) => AddTaskScreen(tasks: tasks)
      )
    ).then((tasks) {
      if (tasks != null) {
        setState(() {
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Task Manager'), 
        backgroundColor: Colors.blue
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            mainAxisAlignment: .spaceBetween,
            crossAxisAlignment: .stretch,
            children: [
              Center(child: Text('My Tasks')),
              Expanded(
                child: ListView.builder(
                  itemCount: tasks.length,
                  itemBuilder: (_, index){
                    return Card(
                      child: ListTile(
                        title: Text(tasks[index]),
                        trailing: GestureDetector(
                          child: Icon(Icons.delete),
                        )
                      ),
                    );
                  }
                )
              ),
              ElevatedButton.icon(
                onPressed: () {
                  goToAddTaskScreen(context);
                  setState(() {
                  });
                }, 
                label: Text('Add Task'),
                icon: Icon(Icons.add),
              )

            ],
          ),
        ),
      ),
    );
  }
}