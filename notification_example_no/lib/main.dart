import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:notification_example_no/notification_services.dart';
import 'package:notification_example_no/welcome_screen.dart';

const AndroidNotificationChannel channel = AndroidNotificationChannel(
  "high_importance_channel",
  "high_importance_notification",
  importance: Importance.high,
  playSound: true,
);
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NotificationService().initNotifications();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: WelcomeScreen());
  }
}
