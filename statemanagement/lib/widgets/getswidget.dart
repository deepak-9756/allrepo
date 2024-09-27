import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/get/getexample.dart';
import 'package:statemanagement/providerstate/providerexample.dart';

class Getxwidget extends StatefulWidget {
  const Getxwidget({super.key});

  @override
  State<Getxwidget> createState() => _GetxwidgetState();
}

class _GetxwidgetState extends State<Getxwidget> {
  Getexample v = Get.put(Getexample());
  @override
  Widget build(BuildContext context) {
    print("builder");
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(v.count.toString())),
            ElevatedButton(
                onPressed: () {
                  print("builder1");
                  v.increment(v.count);
                },
                child: const Text("+")),
            ElevatedButton(
                onPressed: () {
                  print("builder2");
                  v.decrement(v.count);
                },
                child: const Text("-"))
          ],
        ),
      ),
    );
  }
}
