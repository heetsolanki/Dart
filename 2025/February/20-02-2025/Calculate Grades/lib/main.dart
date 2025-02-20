import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Calculate Grade';
  // This widget is the root of your application.
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
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.
  // This class is the configuration for the state.
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String totalMarks = '0';
  String obtainedMarks = '0';
  double percentage = 0.0;
  String _grade = 'nil';

  void gradeCalculate() {
    setState(() {
      percentage = (int.parse(obtainedMarks) / int.parse(totalMarks)) * 100;
      if (percentage >= 90) {
        _grade = 'A';
      } else if (percentage > 75 && percentage < 90) {
        _grade = 'B';
      } else if (percentage > 60 && percentage < 70) {
        _grade = 'C';
      } else if (percentage > 40 && percentage < 60) {
        _grade = 'D';
      } else {
        _grade = 'F';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('Calculate Grade'),
        elevation: 20.0, //<Widget>[]

        backgroundColor: Colors.amber,
        foregroundColor: Colors.black,
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter obtained marks"),
              onChanged: (text) => setState(() {
                obtainedMarks = text;
              }),
            ),
            const Text(" "),
            TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: "Enter total marks"),
              onChanged: (text) => setState(() {
                totalMarks = text;
              }),
            ),
            ElevatedButton(
                onPressed: gradeCalculate,
                child: const Text("Calculate Grade")),
            Text(
              'Grade: $_grade',
              style: const TextStyle(fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}
