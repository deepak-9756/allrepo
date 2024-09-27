import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/providerstate/providerexample.dart';
import 'package:statemanagement/widgets/getswidget.dart';
import 'package:statemanagement/widgets/providerwidgets.dart';

void main() {
  // runApp(MultiProvider(
  //   providers: [ChangeNotifierProvider(create: (_) => Providerexample())],
  //   child: const MyApp(),
  // ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: MaterialApp(
        title: 'Flutter Demo',
        home: Getxwidget(),
      ),
    );
  }
}
