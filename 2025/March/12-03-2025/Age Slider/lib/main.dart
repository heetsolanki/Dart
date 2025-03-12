import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Age Slider';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        // useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Age Slider',
            style: TextStyle(fontWeight: FontWeight.w500)),
        leading: const Icon(Icons.numbers),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(left: 22),
            child: Text(
              'Choose age',
              style: TextStyle(
                fontSize: 22,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SfSlider(
            activeColor: Colors.blueGrey,
            min: 0.0,
            max: 100.0,
            value: _age,
            interval: 10,
            showTicks: true,
            showLabels: true,
            enableTooltip: true,
            minorTicksPerInterval: 1,
            stepSize: 1,
            onChanged: (dynamic value) {
              setState(() {
                _age = value;
              });
            },
          ),
          Align(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                'Your age is: $_age',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
