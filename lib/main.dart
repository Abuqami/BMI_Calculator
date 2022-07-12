import 'package:flutter/material.dart';
import 'package:healthy_tools/screens/InputPage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.white,
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(color: Colors.black),
          color: Color(0xFF20857D),
          centerTitle: true,
        ),
      ),
      home: Scaffold(
        body: InputPage(),
      ),

    ),
  );
}
