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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Card(
            elevation: 10.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            // ignore: deprecated_member_use
            shadowColor: Colors.blueAccent.withOpacity(0.5),
            child: const Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                mainAxisSize:
                    MainAxisSize.min, // Add this to shrink-wrap the card
                children: [
                  Text(
                    "Welcome to my app!!!!",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20), // Add some space between text and image
                  // Replace with your image asset
                  Image(image: AssetImage('assets/logo.png')),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

