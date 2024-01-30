// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:grid_view_learning/category.dart';
import 'package:grid_view_learning/category_item.dart';
import 'package:grid_view_learning/category_view.dart';

import 'package:grid_view_learning/main.dart';

void main() {
  var fakeCategories = [
    const Categories(id: 1, nameOfCategory: 'Món ăn Việt', color: Colors.blue),
    const Categories(id: 2, nameOfCategory: 'Món ăn Nhật', color: Colors.red),
    const Categories(id: 3, nameOfCategory: 'Món ăn Hàn', color: Colors.green),
    const Categories(id: 4, nameOfCategory: 'Món ăn Trung', color: Colors.blue),
    const Categories(id: 5, nameOfCategory: 'Món ăn Ý', color: Colors.amber),
    const Categories(
        id: 6, nameOfCategory: 'Món ăn Pháp', color: Colors.deepPurpleAccent),
    const Categories(id: 7, nameOfCategory: 'Món ăn Đức', color: Colors.indigo),
    const Categories(id: 8, nameOfCategory: 'Món cay Thái', color: Colors.lime),
    const Categories(
        id: 9, nameOfCategory: 'Ẩm thực chay', color: Colors.greenAccent),
    const Categories(
        id: 10, nameOfCategory: 'Ẩm thực Miền Bắc', color: Colors.green),
    const Categories(
        id: 11, nameOfCategory: 'Ẩm thực miền Trung', color: Colors.orange),
    const Categories(
        id: 12, nameOfCategory: 'Ẩm thực Miền Nam', color: Colors.indigo),
  ];
  //
  setUp(() {
    
    print("Testing...");

  });
  //test hiển thị chính xác số luong item trong GridView

  testWidgets("Display correct number of items", (widgetTester) async {
    await widgetTester.pumpWidget(MyApp());
    expect(find.byType(CategoryItems), findsNWidgets(fakeCategories.length));
  });
/*
! equals: Hàm này được sử dụng để so sánh giá trị của hai đối tượng. 
! Trong ngữ cảnh của test Flutter, bạn có thể sử dụng nó để so sánh giá trị trả về từ hàm kiểm tra với giá trị mong đợi. Nếu chúng bằng nhau, test sẽ được thông qua.
! expect(actualValue, equals(expectedValue));
*/
/* 
!findsNWidgets: Hàm này được sử dụng để kiểm tra số lượng widget mà bạn tìm kiếm bằng một Finder cụ thể. 
!Nếu số lượng widget tìm thấy bằng với số lượng bạn mong đợi, thì test sẽ được thông qua.
 */
//test hiển thị chính xác thông tin của từng item

  testWidgets("Display correct information of items", (widgetTester) async {
    await widgetTester.pumpWidget(MyApp());
    expect(find.text("Món ăn Việt"), findsOneWidget);
    expect(find.text("Món ăn Nhật"), findsOneWidget);
    expect(find.text("Món ăn Hàn"), findsOneWidget);
    expect(find.text("Món ăn Trung"), findsOneWidget);
    expect(find.text("Món ăn Ý"), findsOneWidget);
    expect(find.text("Món ăn Pháp"), findsOneWidget);
    expect(find.text("Món ăn Đức"), findsOneWidget);
    expect(find.text("Món cay Thái"), findsOneWidget);
    expect(find.text("Ẩm thực chay"), findsOneWidget);
    expect(find.text("Ẩm thực Miền Bắc"), findsOneWidget);
    expect(find.text("Ẩm thực miền Trung"), findsOneWidget);
    expect(find.text("Ẩm thực Miền Nam"), findsOneWidget);
  });

//test giao diện của GridView
  testWidgets("Display Correct UI", (widgetTester) async {});

//test Item Builder của GridView
  testWidgets("Display correct number of items", (widgetTester) async {});

  tearDown(() {});
}
