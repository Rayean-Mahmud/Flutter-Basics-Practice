import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
        ),
        body: Container(
          height: 180,
          width: double.infinity,
          color: Colors.green,
          alignment: Alignment.center,
          margin: const EdgeInsets.all(18),
          padding: const EdgeInsets.all(32),
          transform: Matrix4.rotationZ(0.1),
          child: const Text(" Hola! This text is inside a container.",
              style: TextStyle(fontSize: 18)),
        ),
      ),
    );
  }
}
