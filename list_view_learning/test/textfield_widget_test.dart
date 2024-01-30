import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:list_view_learning/main.dart';

void main() {
  testWidgets("Reverse String Widget Test", (widgetTester) async {
    await widgetTester.pumpWidget(MyApp());
    var textField = find.byType(TextField);
    expect(textField, findsOneWidget);
    await widgetTester.enterText(textField, "Hello");
    expect(find.text("Hello1"), findsOneWidget);
  });
}
