import 'package:flutter/material.dart';
import '../data/data.dart';
import 'categorytile.dart';

class CategoryListScreen extends StatelessWidget {
  CategoryListScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pinoy Recipes"),
        centerTitle: true,
        backgroundColor: Colors.amber,
        foregroundColor: Colors.white,
      ),
      body: GridView.builder(
        padding: .all(8),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 3/2
        ), 
      itemBuilder: (_,index)=>
        Categorytile(category: CATEGORIES[index]),
      itemCount: CATEGORIES.length,),
    );
  }
}