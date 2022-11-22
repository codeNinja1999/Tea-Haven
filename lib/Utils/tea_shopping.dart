// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TeaTile extends StatelessWidget {
  final String imageName;
  final String teaName;
  final int price;
  final Icon icon;
  const TeaTile(
      {required this.imageName,
      required this.teaName,
      required this.price,
      required this.icon,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(
              'assets/images/' + imageName,
            ),
            backgroundColor: Colors.transparent,
            radius: 50,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                teaName,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              Text(
                '\$' + price.toString(),
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Row(
                children: [
                  icon,
                  Text(
                    '350 Grams',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
