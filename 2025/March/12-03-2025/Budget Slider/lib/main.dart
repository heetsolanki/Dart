import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Budget Slider';
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
  SfRangeValues _budget = SfRangeValues(0, 10000);
  int _start = 0, _end = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Budget Slider',
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
              'Choose your budget',
              style: TextStyle(
                fontSize: 22,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SfRangeSlider(
              min: 0,
              max: 10000,
              values: _budget,
              enableTooltip: true,
              showDividers: true,
              // showLabels: true,
              showTicks: true,
              interval: 1000,
              minorTicksPerInterval: 1,
              stepSize: 1000,
              onChanged: (SfRangeValues values) {
                setState(() {
                  _budget = values;
                  _start = values.start;
                  _end = values.end;
                });
              }),
          Align(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                'Your budget is between: $_start to $_end',
                style: const TextStyle(
                  fontSize: 18,
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
