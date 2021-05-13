import 'package:flutter/material.dart';
import 'package:shopping_homepage/home_page.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
