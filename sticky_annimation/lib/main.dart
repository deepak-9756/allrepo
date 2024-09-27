import 'package:flutter/material.dart';
import 'package:sticky_annimation/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // Created By Flutter baba
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Profile UI',
      theme: ThemeData(useMaterial3: true),
      home: const HomePage(),
    );
  }
}
