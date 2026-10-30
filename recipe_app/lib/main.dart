import 'package:flutter/material.dart';
import 'package:recipe_app/screens/category_list.dart';

void main(){
  runApp(RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CategoryListScreen(),
    );
  }
}