import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Named route demo';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstScreen(),
        '/calculate': (context) => const CalculateConversion(),
      },
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Convert Currency'),
        backgroundColor: Colors.lightGreen,
        foregroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.currency_exchange_rounded),
          tooltip: 'Currency Converter',
          onPressed: () {},
        ),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(left: 10.0, right: 20.0, bottom: 15.0),
                child: Text(
                  '1. Click on Convert Currency Button.',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.left,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10.0, right: 20.0, bottom: 15.0),
                child: Text(
                  '2. Enter the number of USD to be converted.',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.left,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10.0, right: 20.0, bottom: 15.0),
                child: Text(
                  '3. Click on Convert Currency Button.',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.left,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/calculate');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.black,
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontStyle: FontStyle.normal),
                ),
                child: const Text(
                  'Convert Currency',
                  style: TextStyle(fontSize: 18),
                ),
              )
            ]),
      ),
    );
  }
}

class CalculateConversion extends StatefulWidget {
  const CalculateConversion({super.key});

  @override
  _CalculateConversion createState() => _CalculateConversion();
}

class _CalculateConversion extends State<CalculateConversion> {
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
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Enter USD"),
                onChanged: (text) => setState(() {
                  usd = text;
                }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: convertCurrency,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.black,
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontStyle: FontStyle.normal),
                ),
                child: const Text(
                  'Convert Currency',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
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
