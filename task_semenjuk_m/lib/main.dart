import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'task',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Task Semenjuk'),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}
  
class _HomePageState extends State<HomePage>{

    var colors = [
      Colors.amber,
      Colors.red,
      Colors.purple,
      Colors.blue,
      Colors.yellow,
      Colors.green,
      Colors.pink,
      Colors.orange,
      Colors.black,
      Colors.grey,
      Colors.white,
      Colors.transparent
    ];

    var currentColor = Colors.white;
    var boxcolor = Colors.black;

    setRandomColor(){
      var rgb = Random().nextInt(colors.length);
      var button = Random().nextInt(colors.length);
      setState(() {
        currentColor = colors[rgb];
        boxcolor = colors[button];
      });
    }

    @override 
    Widget build(BuildContext context){
      return Container(
        color: currentColor,
        child: Center(
          child: InkWell(
            onTap: () => setRandomColor(),
              child: Container( 
                height: 1000,
                width: 400,
                child: Align(
                  alignment: Alignment.center,
                  child: Text('Click anywere',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: boxcolor
                    ),
                  ),
                ),  
              ),
          ),
        ),
      );
    }
}

