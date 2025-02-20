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
        _containerColor = Colors.indigo;
        return;
      } else if (_containerColor == Colors.indigo) {
        _containerColor = Colors.blue;
        return;
      } else if (_containerColor == Colors.blue) {
        _containerColor = Colors.green;
        return;
      } else if (_containerColor == Colors.green) {
        _containerColor = Colors.yellow;
        return;
      } else if (_containerColor == Colors.yellow) {
        _containerColor = Colors.orange;
        return;
      } else if (_containerColor == Colors.orange) {
        _containerColor = Colors.red;
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
            title: const Text("RAINBOW Color Changer"),
            backgroundColor: Colors.transparent,
          ),
          body: Container(decoration: BoxDecoration(color: _containerColor)),
          floatingActionButton: FloatingActionButton(
            onPressed: changeColor,
            tooltip: "Change Color",
            child: const Icon(Icons.change_circle),
          ),
        ));
  }
}
