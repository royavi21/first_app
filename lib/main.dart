// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My application",

      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyWidget(), // <-- Add your widget here
    );
  } //MaterialApp
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My App",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 25, 30, 33),
            fontSize: 25.0,
          ),
        ),
        backgroundColor: const Color.fromARGB(17, 82, 172, 245),
        centerTitle: true,
      ),
      body: Text(
        "Welcome to my app!",
        style: TextStyle(
          fontSize: 20.0,
          color: const Color.fromARGB(255, 10, 70, 118),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
