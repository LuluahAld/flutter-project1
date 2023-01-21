import 'package:flutter/material.dart';
import 'package:project_1/pages/login.dart';

void main() {
  runApp(const StockXApp());
}

class StockXApp extends StatelessWidget {
  const StockXApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Login());
  }
}
