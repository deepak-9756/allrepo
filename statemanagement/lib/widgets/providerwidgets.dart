import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/providerstate/providerexample.dart';

class ProviderExample extends StatefulWidget {
  const ProviderExample({super.key});

  @override
  State<ProviderExample> createState() => _ProviderExampleState();
}

class _ProviderExampleState extends State<ProviderExample> {
  @override
  Widget build(BuildContext context) {
    var v = Provider.of<Providerexample>(context, listen: false);
    print("builder");
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<Providerexample>(
              builder: (context, value, child) {
                return Text(value.count.toString());
              },
            ),
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
