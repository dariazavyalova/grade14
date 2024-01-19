import 'package:flutter/material.dart';
import 'package:grades14/grades14.dart' as grades14;

void main() {
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Native Packages'),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  children: List.generate(10, (index) => Text("${grades14.fib(index).toString()} ")),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
