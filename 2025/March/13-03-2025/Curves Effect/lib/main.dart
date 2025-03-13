import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Tutorial",
      home: AnimatedContainerPage(),
    ));

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 200;
  double _height = 200;
  Color _color = Colors.red;
  void _update() {
    setState(() {
      if (_color == Colors.red) {
        _width = 300;
        _height = 300;
        _color = Colors.green;
        curve:
        Curves.easeInOutCubic;
      } else {
        _width = 200;
        _height = 200;
        _color = Colors.red;
        curve:
        Curves.easeOutCubic;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          color: _color,
          duration: Duration(milliseconds: 250),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: _update,
      ),
    );
  }
}
