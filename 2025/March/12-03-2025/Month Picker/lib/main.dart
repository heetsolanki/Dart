import 'package:flutter/material.dart';
import 'package:date_picker_plus/date_picker_plus.dart';

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
  DateTime _selectedDate = DateTime.now();
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
          MonthPicker(
            selectedDate: _selectedDate,
            minDate: DateTime(2021, 1),
            maxDate: DateTime.now(),
            onDateSelected: (date) {
              setState(() {
                _selectedDate = date;
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'You chose: $_selectedDate',
              style: const TextStyle(fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
