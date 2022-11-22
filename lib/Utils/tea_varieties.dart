// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tea_haven/Products/product_details.dart';

class TeaTile extends StatelessWidget {
  final Color color;
  final String imageName;
  final String teaName;
  final int price;
  final Icon icon;
  const TeaTile(
      {required this.color,
      required this.imageName,
      required this.teaName,
      required this.price,
      required this.icon,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
        color: color,
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/' + imageName),
            backgroundColor: Colors.transparent,
            radius: 50,
          ),
          SizedBox(
            width: 150,
            child: Column(
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
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            width: 18,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TeaDetails()));
            },
            child: CircleAvatar(
              radius: 16,
              backgroundColor: Color(0xff45994d),
              child: CircleAvatar(
                backgroundColor: Color(0xfff3e3c4),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xff45994d),
                ),
                radius: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
