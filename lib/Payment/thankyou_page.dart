// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:tea_haven/Pages/welcomePage.dart';

class ThankyouPage extends StatefulWidget {
  const ThankyouPage({Key? key}) : super(key: key);

  @override
  State<ThankyouPage> createState() => _ThankyouPageState();
}

class _ThankyouPageState extends State<ThankyouPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff45994d),
      body: thankyouPage(),
    );
  }

  Widget thankyouPage() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 50, horizontal: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.all(25),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xFFA6D388),
                  radius: 56,
                  child: Icon(
                    Icons.done_rounded,
                    size: 100,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Thank you!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Payment Done Successfully',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(children: [
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  color: Colors.white,
                ),
                child: Icon(
                  Icons.computer_outlined,
                  size: 56,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'To celebrate your first purchase',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'your package will include',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '2 Tea Haven cups as our gifts. ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              )
            ]),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => WelcomePage()));
            },
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                'Continue Shopping',
                style: TextStyle(
                  color: Color(0xff45994d),
                  fontSize: 22,
                ),
              ),
            ),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              primary: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
