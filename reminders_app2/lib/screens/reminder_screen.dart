import 'package:flutter/material.dart';

class ReminderScreen extends StatefulWidget {
  const ReminderScreen({super.key});

  @override
  State<ReminderScreen> createState() => _ReminderScreenState();
}

class _ReminderScreenState extends State<ReminderScreen> {

  List<String> reminders = [];
  var txtCtrl = TextEditingController();

  void addReminder(){
    setState(() {
      if(txtCtrl.text!=""){
        reminders.add(txtCtrl.text);
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(
            context: context, 
            builder: (_) => AlertDialog(
              title: Text('Add Reminder'),
              content: TextField(
                controller: txtCtrl,
                decoration: InputDecoration(
                  border: OutlineInputBorder()
                ),
              ),
              actions: [
                ElevatedButton(
                  onPressed: (){
                    print(txtCtrl.text);
                    addReminder();
                    Navigator.of(context).pop();
                  }, 
                  child: Text('Add')
                ),
                TextButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  }, 
                  child: Text('Cancel')
                )
              ],
            )
          );
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text('Reminders'),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: reminders.length,
                  itemBuilder: (_, index){
                    return Dismissible(
                      key: UniqueKey(),
                      direction: .endToStart,
                      background: Container(
                        color: Colors.red,
                      ),
                      secondaryBackground: Container(
                        color: Colors.blue,
                        padding: .only(right: 18),
                        alignment: .centerEnd,
                        child: Icon(Icons.delete, color: Colors.white,),
                      ),
                      onDismissed: (direction) {
                        String removedReminder = reminders.removeAt(index);
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            action: SnackBarAction(
                              label: 'UNDO', 
                              onPressed: (){
                                setState(() {
                                  reminders.insert(index, removedReminder);
                                });
                                
                                
                              }
                            ),
                            content: Text(removedReminder + " deleted.")
                          )
                        );
                      },
                      confirmDismiss: (direction) async{
                        final result = await showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                            title: Text("Confirm Deletion"),
                            content: Text('Are you sure you want to delete this reminder?'),
                            actions: [
                              ElevatedButton(
                                onPressed: (){
                                  Navigator.of(context).pop('yes');
                                }, 
                                child: Text('Yes')
                              ),
                              TextButton(
                                onPressed: (){
                                  Navigator.of(context).pop();
                                }, 
                                child: Text('Cancel')
                              )
                            ],
                          )
                        );
                        if(result == null){
                          return false;
                        }
                        return true;
                      },
                      child: Card(
                        child: ListTile(
                          leading: CircleAvatar(child: Text('${index+1}')),
                          title: Text(reminders[index]),
                        ),
                      )
                    );
                  }
                ),
              )
          
            ],
          ),
        )
      ),
    );
  }
}