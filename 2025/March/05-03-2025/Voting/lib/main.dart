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
  String currentYear = '0';
  int age = 0;
  String voting = "NA";

  void calculateAge() {
    setState(() {
      age = 2025 - int.parse(currentYear);
      if (age > 18) {
        voting = "YES";
      } else {
        voting = "NO";
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
        title: const Text('Calculate Total Bill'),
        elevation: 20.0, //<Widget>[]

        backgroundColor: Colors.blueGrey,
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
            const Text(
              'Enter birth year',
              style: TextStyle(fontSize: 22),
              textAlign: TextAlign.left,
            ),
            TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: ""),
              onChanged: (text) => setState(() {
                currentYear = text;
              }),
            ),
            ElevatedButton(
              onPressed: calculateAge,
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 22),
              ),
              child: const Text("Calculate age"),
            ),
            Text(
              'Your age: $age',
              style: const TextStyle(fontSize: 22),
            ),
            Text(
              'Eligible for voting: $voting',
              style: const TextStyle(fontSize: 22),
            )
          ],
        ),
      ),
    );
  }
}
