import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Flutter Stateful Clicker Counter';
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
  String usd = 'nil';
  double inr = 0, jpy = 0, vnd = 0;

  void convertCurrency() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      inr = 86.98 * double.parse(usd);
      jpy = 153.77 * double.parse(usd);
      vnd = 25464.99 * double.parse(usd);
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
        title: const Text('Currency Converter'),
        elevation: 20.0, //<Widget>[]
        backgroundColor: Colors.lightGreen,
        foregroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.currency_exchange_rounded),
          tooltip: 'Currency Converter',
          onPressed: () {},
        ),
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
                  border: OutlineInputBorder(), labelText: "Enter USD"),
              onChanged: (text) => setState(() {
                usd = text;
              }),
            ),
            ElevatedButton(
                onPressed: convertCurrency,
                child: const Text("Convert Currency")),
            Text(
              'USD to INR: ${inr.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 15),
            ),
            Text(
              'USD to JPY: ${jpy.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 15),
            ),
            Text(
              'USD to VND: ${vnd.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
