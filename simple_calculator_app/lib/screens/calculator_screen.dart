import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CalculatorScreen extends StatefulWidget {
  CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  double total = 0;
  var num1 = TextEditingController();
  var num2 = TextEditingController();

  void add(){
    setState(() {
      total = 0;
      total = double.parse(num1.text) + double.parse(num2.text);
    });
  }
  void subtract(){
    setState(() {
      total = 0;
      total = double.parse(num1.text) - double.parse(num2.text);
    });
  }
  void multiply(){
    setState(() {
      total = 0;
      total = double.parse(num1.text) * double.parse(num2.text);
    });
  }
  void divide(){
    setState(() {
      total = 0;
      total = double.parse(num1.text) / double.parse(num2.text);
    });
  }

  void clear(){
    setState(() {
      num1.clear();
      num2.clear();
      total = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calculator'
        ),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Text('Total: ' + total.toString(), style: TextStyle(fontSize: 20, fontWeight: .w800),),
              SizedBox(height: 20,),
              TextField(
                controller: num1,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Enter First Number')
                ),
                keyboardType: TextInputType.number,
                inputFormatters: 
                  <TextInputFormatter> [
                    FilteringTextInputFormatter.digitsOnly
                  ],
              ),
              SizedBox(height: 20,),
              TextField(
                controller: num2,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Enter Second Number')
                ),
                keyboardType: .number,
                inputFormatters: 
                  <TextInputFormatter> [
                    FilteringTextInputFormatter.digitsOnly
                  ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: .spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: ()=> add(), 
                    child: Icon(
                      Icons.add
                    )
                  ),
                  ElevatedButton(
                    onPressed: ()=>subtract(), 
                    child: Text('-' , style: TextStyle(fontSize: 25),)
                  ),
                  ElevatedButton(
                    onPressed: ()=> multiply(), 
                    child: Text('*' , style: TextStyle(fontSize: 20),)
                  ),
                  ElevatedButton(
                    onPressed: () => divide(), 
                    child: Text('/' , style: TextStyle(fontSize: 20),)
                  ),
                  ElevatedButton(onPressed: () => clear(), child: Text('C', style: TextStyle(fontSize: 20),))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}