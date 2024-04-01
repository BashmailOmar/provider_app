import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/list_provider.dart';
import 'package:provider_app/second.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumbersListProvider>(
      builder:
          (BuildContext context, NumbersListProvider value, Widget? child) =>
              Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amber,
          child: Icon(Icons.add),
          onPressed: () {
            value.add();
          },
        ),
        appBar: AppBar(
          title: Text("Scouter"),
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
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Second(),
                    ),
                  );
                },
                child: Text("Go to second screen"))
          ],
        ),
      ),
    );
  }
}
