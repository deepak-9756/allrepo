import 'package:flutter/material.dart';
import 'package:statefull_stateless/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // colorSchemeSeed: Colors.red,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red),

        // scaffoldBackgroundColor: Colors.blue, // Set the background color
      ),
      home:  HomeScreen(),
    );
  }
}




