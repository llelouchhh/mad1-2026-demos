import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var titleCtrl = TextEditingController();

  var notesCtrl = TextEditingController();

  var reminders =[];

  var notes =[];

  void addNewReminder(){
    setState(() {
      if(titleCtrl.text != "") {
      reminders.add(titleCtrl.text);
      notes.add(notesCtrl.text);
    }
    });
    
  }

  void deleteReminder(int idx){
    setState(() {
      reminders.removeAt(idx);
      notes.removeAt(idx);
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reminders'),
        centerTitle: true,
        backgroundColor: Colors.cyanAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: .stretch,
          children: [
            TextField(
              controller: titleCtrl,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hint: Text('Title')
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: notesCtrl,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hint: Text('Notes')
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton.icon(
              onPressed: () => addNewReminder(), 
              label: Text('Add New Reminder'),
              icon: Icon(Icons.add),
            ),
            SizedBox(height: 10,),
            Text('List', style: TextStyle(fontWeight: .w400, fontSize: 20),),
            SizedBox(height: 10,),
            Expanded(
              child: ListView.builder(
                itemCount: reminders.length,
                itemBuilder: (_, index){
                  return Card(
                    child: ListTile(
                      title: Text(reminders[index], style: TextStyle(fontWeight: .w700, fontSize: 18),),
                      subtitle: Text(notes[index]),
                      trailing: GestureDetector(
                        child: Icon(Icons.delete),
                        onTap: () {
                          deleteReminder(index);
                        },
                      ),
                    ),
                  );
                }))
          ],
        ),
      ),
    );
  }
}