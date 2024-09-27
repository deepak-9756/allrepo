import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print(('home_screen'));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home_Screen'),
      ),
      body: Column(
        children: [
          Text('hello sir')
        ]
      ),

    );
  }
}
