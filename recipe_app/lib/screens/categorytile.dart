
import 'package:flutter/material.dart';
import 'package:recipe_app/screens/recipe_list.dart';
import '../models/category.dart';


class Categorytile extends StatelessWidget {
  Categorytile({super.key, required this.category});

  final Category category;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_)=> RecipeListScreen())),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: [
            category.color,
            category.color.withOpacity(0.3)
            ],
            begin: .topStart,
            end: .bottomEnd 
          ),
          
      
        ),
        child: Text(category.name, style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),),
        padding: .all(12),
      ),
    );
  }
}