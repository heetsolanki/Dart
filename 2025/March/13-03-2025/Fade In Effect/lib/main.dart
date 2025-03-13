import 'package:flutter/material.dart';

const emp_url =
    'https://www.vegrecipesofindia.com/wp-content/uploads/2016/08/kaju-pulao-recipe-1a.jpg';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Smart Recipe Finder',
              style: TextStyle(fontWeight: FontWeight.w500)),
          backgroundColor: const Color.fromRGBO(169, 132, 103, 1),
          leading: const Icon(Icons.rice_bowl_rounded),
        ),
        body: Container(
          color: const Color.fromRGBO(221, 229, 182, 1),
          child: FadeInDemo(),
        ),
      ),
    );
  }
}

class FadeInDemo extends StatefulWidget {
  _FadeInDemoState createState() => _FadeInDemoState();
}

class _FadeInDemoState extends State<FadeInDemo> {
  double opacityLevel = 0.0;
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      const SizedBox(
        height: 30,
      ),
      Image.network(emp_url),
      const SizedBox(
        height: 20,
      ),
      ElevatedButton(
        child: const Text(
          'Show details',
          style: TextStyle(
              color: Color.fromRGBO(108, 88, 76, 1),
              fontWeight: FontWeight.w500),
        ),
        onPressed: () => setState(() {
          opacityLevel = 1.0;
        }),
      ),
      const SizedBox(
        height: 20,
      ),
      AnimatedOpacity(
          duration: const Duration(seconds: 3),
          opacity: opacityLevel,
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: const Column(
              children: <Widget>[
                Text(
                    'Lentils Cashew Pulao is a flavorful dish made with basmati rice, lentils, and cashews, cooked with aromatic spices like cumin, cinnamon, and bay leaves. It’s a nutritious, hearty meal, offering protein and fiber from the lentils and a crunchy texture from the cashews. Perfect as a main dish or paired with raita or curry.',
                    style: TextStyle(fontWeight: FontWeight.w400)),
              ],
            ),
          ))
    ]);
  }
}
