import 'package:first_app/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF23313F),
        primaryColor: const Color(0xFF23313F),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF19212B),
        ),
      ),
    );
  }
}
