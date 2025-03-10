import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'GridView';
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
        title: const Text('GridView',
            style: TextStyle(fontWeight: FontWeight.w600)),
        elevation: 20.0, //<Widget>[]

        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: GridView.count(
          scrollDirection: Axis.vertical,
          crossAxisCount: 2,
          children: [
            Card(
              color: Colors.teal,
            ),
            Card(
              color: Colors.deepPurple,
            ),
            Card(
              color: Colors.red,
            ),
            Card(
              color: Colors.green,
            ),
            Card(
              color: Colors.blue,
            ),
            Card(
              color: Colors.amber,
            ),
            Card(
              color: Colors.pink,
            ),
            Card(
              color: Colors.purple,
            ),
            Card(
              color: Colors.deepOrange,
            ),
            Card(
              color: Colors.cyan,
            )
          ],
        ),
      ),
    );
  }
}
