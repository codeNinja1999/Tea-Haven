// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TopTeaVarieties extends StatelessWidget {
  final String imagename;
  final String teaname;
  const TopTeaVarieties(
      {required this.imagename, required this.teaname, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 100,
        width: 110,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/' + imagename),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      Container(
        padding: EdgeInsets.all(8.0),
        child: Text(
          teaname,
          style: TextStyle(fontSize: 16),
        ),
      ),
    ]);
  }
}
