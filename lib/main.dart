import 'package:flutter/material.dart';
import 'package:flutter_texteditingcontroller_demo/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.brown,
          brightness: Brightness.light,
        ),
        inputDecorationTheme: InputDecorationTheme(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: Colors.brown,
              width: 2,
            ),
          ),
          hintStyle: TextStyle(fontStyle: FontStyle.italic),
        ),
      ),
      home: HomePage(),
    );
  }
}
