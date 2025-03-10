import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Checkbox';
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
  bool valueFirst = false;
  bool valueSecond = false;

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
        title: const Text('Checkbox',
            style: TextStyle(fontWeight: FontWeight.w600)),
        elevation: 20.0, //<Widget>[]

        backgroundColor: Colors.purpleAccent,
        foregroundColor: Colors.black,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Two Checkboxes',
            style: TextStyle(fontSize: 18),
          ),
          Checkbox(
            checkColor: Colors.greenAccent,
            activeColor: Colors.red,
            value: this.valueFirst,
            onChanged: (value) {
              setState(() {
                this.valueFirst = value!;
              });
            },
          ),
          Checkbox(
            checkColor: Colors.blueAccent,
            activeColor: Colors.red,
            value: this.valueSecond,
            onChanged: (value) {
              setState(() {
                this.valueSecond = value!;
              });
            },
          ),
        ],
      ),
    );
  }
}
