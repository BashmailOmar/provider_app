import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/list_provider.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumbersListProvider>(
      builder:
          (BuildContext context, NumbersListProvider value, Widget? child) =>
              Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amber,
          child: const Icon(Icons.add),
          onPressed: () {
            value.add();
          },
        ),
        appBar: AppBar(
          title: const Text("Scouter"),
          backgroundColor: Colors.amber,
        ),
        body: Column(
          children: [
            Text(
              value.numbers.length.toString(),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: value.numbers.length,
                itemBuilder: (context, index) {
                  return Text(
                    value.numbers[index].toString(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
