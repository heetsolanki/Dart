import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Animation - Fade In';
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
  double opacityLevel = 0.0;
  String imageUrl =
      'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/Mercedes-AMG_One_at_the_2022_Goodwood_Festival_of_Speed.jpg/1920px-Mercedes-AMG_One_at_the_2022_Goodwood_Festival_of_Speed.jpg';

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
        title: const Text('Animation - Fade In',
            style: TextStyle(fontWeight: FontWeight.w600)),
        elevation: 20.0, //<Widget>[]

        backgroundColor: Colors.purpleAccent,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(imageUrl),
            ElevatedButton(
              onPressed: () => setState(() {
                opacityLevel = 1.0;
              }),
              child: const Text(
                'Show Details',
                style: TextStyle(fontSize: 20),
              ),
            ),
            AnimatedOpacity(
              duration: const Duration(seconds: 2),
              opacity: opacityLevel,
              child: const Column(children: <Widget>[
                Text('Type: Employee 1', style: TextStyle(fontSize: 20)),
                Text('Age: 18', style: TextStyle(fontSize: 20)),
                Text('Employment: None', style: TextStyle(fontSize: 20))
              ]),
            )
          ],
        ),
      ),
    );
  }
}
