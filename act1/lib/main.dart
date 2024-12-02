import 'package:flutter/material.dart';
import 'package:act1/basic_screen.dart';


void main() => runApp(const StaticApp());

class StaticApp extends StatelessWidget {
  const StaticApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     
      title: 'Stateless Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BasicScreen(),
    );
  }
}