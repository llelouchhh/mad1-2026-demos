import 'package:flutter/material.dart';

class SampleAppScreen extends StatefulWidget {
  SampleAppScreen({super.key});

  @override
  State<SampleAppScreen> createState() => _SampleAppScreenState();
}

class _SampleAppScreenState extends State<SampleAppScreen> {
  List<String> items = [];

  var txtCtrl = TextEditingController();

  void addItem(){
    setState(() {
      if(txtCtrl.text != ""){
        items.add(txtCtrl.text);
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
              title: Text('Add Item'),
              content: TextField(
                controller: txtCtrl,
                decoration: InputDecoration(
                  border: OutlineInputBorder()
                ),
              ),
              actions: [
                ElevatedButton(
                  onPressed: (){
                    addItem();
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: .stretch,
            children: [
              TextField(
                controller: txtCtrl,
                decoration: InputDecoration(
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                onPressed: addItem, 
                child: Text('add')
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (_, index) {
                    return Dismissible(
                      key: UniqueKey(),
                      background: Container(color: Colors.red,),
                      secondaryBackground: Container(
                        color: Colors.blue,
                        alignment: .centerEnd,
                        padding: .only(right: 18),
                        child: Icon(Icons.delete),
                      ),
                      onDismissed: (direction) {
                        String itemRemoved = items.removeAt(index);
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(itemRemoved + ' deleted. '),
                            action: SnackBarAction(
                              label: 'UNDO', 
                              onPressed: (){
                                setState(() {
                                  items.insert(index, itemRemoved);
                                });
                                
                              }
                            ),
                          )
                        );
                        setState(() {
                        });
                      },

                      confirmDismiss: (direction) async{
                        final result = await showDialog(
                          context: context, 
                          builder: (_)=> AlertDialog(
                            title: Text('Confirm Deletion'),
                            content: Text('Are you sure you want to delete the item?'),
                            actions: [
                              ElevatedButton(
                                onPressed: (){
                                  Navigator.of(context).pop('sure');
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
                          title: Text(items[index]),
                          leading: CircleAvatar(
                            child: Text('${index+1}'),
                          ),
                        ),
                      )
                    );
                  }
                )
              )
            ],
          ),
        )
      ),
    );
  }
}