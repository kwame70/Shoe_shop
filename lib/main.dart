import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoe_app/cart_provider.dart';
import 'package:shoe_app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MaterialApp(
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
          textTheme: const TextTheme(
            titleLarge: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
            titleMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            bodySmall: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          appBarTheme: const AppBarTheme(
            titleTextStyle: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
      ),
    );
  }
}
