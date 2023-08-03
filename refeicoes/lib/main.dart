import 'package:flutter/material.dart';
import 'screens/category_screem.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vamos cozinhar!',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CategoryScreem(),
    );
  }
}
