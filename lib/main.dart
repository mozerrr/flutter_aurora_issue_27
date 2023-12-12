import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String someKey = String.fromEnvironment("some_key");
    const defaultKey = bool.fromEnvironment("flutter.inspector.structuredErrors");
    return const MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('someKey=$someKey'),
              Text('defaultKey=$defaultKey'),
            ],
          ),
        ),
      ),
    );
  }
}
