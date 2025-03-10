import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Animated Container';
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
  double _width = 200;
  double _height = 200;
  Color _color = Colors.teal;

  void update() {
    setState(() {
      if (_color == Colors.teal) {
        _width = 300;
        _height = 300;
        _color = Colors.deepOrange;
        Curves.easeInOutCubic;
      } else {
        _width = 200;
        _height = 200;
        _color = Colors.teal;
        Curves.easeOutCubic;
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
        title: const Text('Animated Container',
            style: TextStyle(fontWeight: FontWeight.w600)),
        elevation: 20.0, //<Widget>[]

        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: update,
              child: AnimatedContainer(
                width: _width,
                height: _height,
                color: _color,
                duration: const Duration(milliseconds: 250),
              ),
            ),
            const Text(
              'Tap on the color to animate',
              style: TextStyle(fontSize: 25),
            )
          ],
        ),
      ),
    );
  }
}
