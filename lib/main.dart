import 'package:flutter/material.dart';
import 'package:shoe_app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Ubuntu",
        colorSchemeSeed: const Color.fromRGBO(0, 169, 225, 1),
        inputDecorationTheme: const InputDecorationTheme(
          prefixIconColor: Color.fromRGBO(119, 119, 119, 1),
          hintStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
