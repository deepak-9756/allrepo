import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int endTime = DateTime.now().millisecondsSinceEpoch +24 * 60 * 60 * 1000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ulti Countdown Timer'),
      ),
      body: Center(
        child: CountdownTimer(
          endTime: endTime,
          textStyle: TextStyle(fontSize: 30, color: Colors.red,backgroundColor: Colors.green),
          onEnd: () {
            print('Countdown finished');
          },
        ),
      ),
    );
  }
}
