import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:grid_view_learning/category.dart';

// Create an element of Grid
class CategoryItems extends StatelessWidget {
  final Categories category;

  CategoryItems({required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: category.color,
      ),
      child: Text(
        category.nameOfCategory,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
