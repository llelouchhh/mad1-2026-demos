import 'package:flutter/material.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  var itemCtrl = TextEditingController();
  List<String> items = [];

  void addItem() {
    setState(() {
      if (itemCtrl.text != "") items.add(itemCtrl.text);
      print(items);
    });
  }

  void undoDeletion(String item){
    items.add(item);
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
        backgroundColor: Colors.amber,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(
              context: context,
              builder: (_) => AlertDialog(
              content: TextField(
                controller: itemCtrl,
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              title: Text('Add Item'),
                  actions: [
                    ElevatedButton(
                      onPressed: () {
                        addItem();
                        Navigator.of(context).pop();
                        
                      },
                      child: Text('Add'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Cancel'),
                    ),
                  ],
            ),
          );
        },
        backgroundColor: Colors.amber,
        foregroundColor: Colors.white,
        child: Icon(Icons.add),),
        
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: .stretch,
            children: [
              // Row(
              //   children: [
              //     Expanded(
              //       child: TextField(
              //         controller: itemCtrl,
              //         decoration: InputDecoration(
              //           border: OutlineInputBorder(),
              //           label: Text('Todo Item'),
              //         ),
              //       ),
              //     ),
              //     SizedBox(width: 12,),
              //     InkWell(
              //       onTap: () => addItem(),
              //       child: CircleAvatar(
              //         child: Icon(Icons.add),
              //       ),
              //     )
              //   ],
              // ),
              Expanded(
                child: ListView.builder(
                  // scrollDirection: .horizontal,
                  itemCount: items.length,
                  itemBuilder: (_, index) {
                    // return Card(child: Text(items[index]));
                    return Dismissible(
                      key: UniqueKey(),
                      background: Container(color: Colors.red),
                      secondaryBackground: Container(
                        padding: .only(right: 18),
                        color: Colors.blue,
                        alignment: .centerEnd,
                        child: Icon(Icons.delete, color: Colors.red),
                      ),
                      direction: .endToStart,
                      onDismissed: (direction) {
                        // if(direction == DismissDirection.endToStart)
                        
                        String item = items.removeAt(index);
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            duration: Duration(seconds: 3),
                            content: Text('Item ($item) deleted.'),
                            action: SnackBarAction(
                              label: 'UNDO',
                              onPressed: () {
                                items.insert(index, item);
                                setState(() {
                                  
                                });
                              },
                            ),
                          ),
                        );
                        
                      },
                      confirmDismiss: (direction) async {
                        // if(direction == DismissDirection.endToStart)
                        final result = await showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                            content: Text('Do you want to delete this item?'),
                            title: Text('Confirm to delete'),
                            actions: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop('yes');
                                },
                                child: Text('YES'),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('Cancel'),
                              ),
                            ],
                          ),
                        );
                        print(result);
                        if (result == null) return false;
                        return true;
                      },
                      child: Card(
                        child: ListTile(
                          title: Text(items[index]),
                          // subtitle: Text('Sub'),
                          leading: CircleAvatar(
                            child: Text('${index+1}'),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}