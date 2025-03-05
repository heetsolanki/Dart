import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyState createState() => _MyState();
}

class _MyState extends State<MyApp> {
  Color _containerColor = Colors.deepPurple;

  void changeColor() {
    setState(() {
      if (_containerColor == Colors.deepPurple) {
        _containerColor = Colors.cyan;
        return;
      }
      _containerColor = Colors.deepPurple;
      return;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Gesture Detector"),
          backgroundColor: Colors.transparent,
        ),
        body: GestureDetector(
          onTap: changeColor,
          child: Container(
            // width: 200,
            // height: 200,
            color: _containerColor,
            child: const Center(
              child: Text(
                "Tap Me!",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
