// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutable

import 'package:flutter/material.dart';

class Person extends StatefulWidget {
  const Person({Key? key}) : super(key: key);

  @override
  State<Person> createState() => _PersonState();
}

class _PersonState extends State<Person> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Person Page'),
      ),
      body: Center(
        child: Text('Welcome to Person page',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
