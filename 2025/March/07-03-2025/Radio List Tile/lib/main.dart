import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Radio List Tile';
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
  int _selectedValue = 1;
  String answer = "";
  void displayAnswer() {
    setState(() {
      if (_selectedValue == 2) {
        answer = "RIGHT";
      } else {
        answer = "WRONG";
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
        title: const Text('Radio List Tile'),
        elevation: 20.0, //<Widget>[]

        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.black,
      ),
      body: Container(
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
              'Choose the correct option?',
              style: TextStyle(fontSize: 22),
            ),
            RadioListTile(
                title: const Text('Option 1'),
                value: 1,
                groupValue: _selectedValue,
                onChanged: (value) {
                  setState(() {
                    _selectedValue = value!;
                  });
                }),
            RadioListTile(
                title: const Text('Option 2'),
                value: 2,
                groupValue: _selectedValue,
                onChanged: (value) {
                  setState(() {
                    _selectedValue = value!;
                  });
                }),
            RadioListTile(
                title: const Text('Option 3'),
                value: 3,
                groupValue: _selectedValue,
                onChanged: (value) {
                  setState(() {
                    _selectedValue = value!;
                  });
                }),
            ElevatedButton(
              onPressed: displayAnswer,
              child: const Text('Submit'),
            ),
            Text(
              '$answer',
              style: const TextStyle(fontSize: 25),
            )
          ],
        ),
      ),
    );
  }
}
