import 'package:flutter/material.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  var itemCtrl = TextEditingController();
  List<String> items = [];

  void addItem(){
    setState(() {
      if(itemCtrl.text != ""){
        items.add(itemCtrl.text);
      }
      print(items);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: .stretch,
            children: [
              TextField(
                
                controller: itemCtrl,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Todo Item')
                ),
              ),
              ElevatedButton(
                onPressed: (){
                  addItem();
                }, 
                child: 
                Text('ADD')),
                Expanded(
                  child: ListView.builder(
                  // scrollDirection: .horizontal,
                  itemCount: items.length,
                  itemBuilder: (_, index){
                    return ListTile(
                      title: Text(items[index]),
                      subtitle: Text('Sub'),
                      trailing: Icon(Icons.delete),
                      leading: Icon(Icons.check),
                      );
                    }
                  ),
                  // child: SingleChildScrollView(
                  //   child: Column(
                  //     crossAxisAlignment: .stretch,
                  //     children: 
                  //       items.map((item){
                  //         return Card(child: Text(item));
                  //       }).toList(),
                  //   ),
                  // ) ,
                )
            ],
          ),
        )
      ),
    );
  }
}                                