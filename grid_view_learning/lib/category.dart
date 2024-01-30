import 'package:flutter/material.dart';

class Categories {
  final int id;
  final String nameOfCategory;
  final Color? color;

  const Categories(
      {required this.id, required this.nameOfCategory, this.color});

  //getters
  int get getId => id;
  String get getNameOfCategory => nameOfCategory;
  Color? get getColor => color;

  //setter
  set setId(String id) => id = id;
  set setNameOfCategory(String nameOfCategory) =>
      nameOfCategory = nameOfCategory;
  set setColor(Color? color) => color = color;

  @override
  String toString() =>
      'Categories(id: $id, nameOfCategory: $nameOfCategory, color: $color)';
}
