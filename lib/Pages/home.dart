// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutable

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Text('Welcome to home page',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
