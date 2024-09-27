import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:miniplayer/miniplayer.dart';

void main() => runApp(MyApp());

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Miniplayer example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFFAFAFA),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Miniplayer(
          minHeight: 220,
          maxHeight: MediaQuery.of(context).size.height,
          builder: (height, percentage) {
            return Scaffold(
              body: Stack(
                children: [
                  Container(
                    color: Colors.red,
                    child: Column(
                      children: [
                        Image.network(
                            'https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg'),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 70,
                    left: 140,
                    child: Container(
                      height: 220,
                      child: Column(
                        children: [
                          IconButton(
                              onPressed: null,
                              icon: Icon(
                                Icons.pause_circle,
                                size: 50,
                              )),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
