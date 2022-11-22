// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutable

import 'package:flutter/material.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Page'),
      ),
      body: Center(
        child: Text('Welcome to Favorite page',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
