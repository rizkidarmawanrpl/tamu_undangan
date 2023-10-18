import 'package:flutter/material.dart';
import 'package:tamu_undangan/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tamu Undangan',
      theme: ThemeData(),
      home: const Login(),
    );
  }
}