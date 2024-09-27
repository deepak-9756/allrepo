import 'package:flutter/material.dart';
import 'package:notification_example_no/notification_services.dart';


class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          // print('hello');
          NotificationService().showNotification(title: 'title',body: 'body');
          // print('hello');
        },
        child: Center(child: Text('notification')),
      ),
    );
  }
}
