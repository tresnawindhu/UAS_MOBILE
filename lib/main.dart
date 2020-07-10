import 'package:flutter/material.dart';
import 'halamanawal.dart';

void main() {
  runApp(new MaterialApp(
    title: "Beranda",
    home: new Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Halamanawal(),
    );
  }
}
