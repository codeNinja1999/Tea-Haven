// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TeaCard extends StatelessWidget {
  final Color color;
  final String imageName;
  final String teaName;
  final int price;
  final Icon icon;
  final String weight;
  const TeaCard(
      {required this.color,
      required this.imageName,
      required this.teaName,
      required this.price,
      required this.icon,
      required this.weight,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      child: Card(
        color: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/images/' + imageName),
                  radius: 50,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    teaName,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Text(
                  "\$" + price.toString(),
                  style: TextStyle(fontSize: 22),
                ),
                Row(
                  children: [
                    icon,
                    Text(
                      weight,
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
