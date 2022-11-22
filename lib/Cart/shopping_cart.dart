// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tea_haven/Payment/paymentpage.dart';
import 'package:tea_haven/Utils/tea_shopping.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff45994d),
      body: shoppingCart(),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  'Total:',
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff45994d),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '\$84',
                  style: TextStyle(
                      fontSize: 28,
                      color: Color(0xff45994d),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xff45994d),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
              ),
              child: Container(
                width: 180,
                padding:
                    EdgeInsets.only(top: 15, bottom: 15, left: 20, right: 20),
                child: Text(
                  'Continue',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PaymentPage()));
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget shoppingCart() {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Back button
            Padding(
              padding: EdgeInsets.all(8),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios),
                color: Colors.white,
              ),
            ),

            // Shopping Cart
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    'Shopping Cart',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Divider(
                  thickness: 3,
                  color: Color(0xffa6d388),
                  endIndent: 180,
                )
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '.',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'A total of 3 pieces',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),

            // BodyPage
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                color: Colors.white,
              ),
              padding: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Tea ListTile
                  Container(
                    padding: EdgeInsets.only(left: 5.0, right: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                      color: Color(0xfff3e3c4),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TeaTile(
                          imageName: 'sample1.png',
                          teaName: 'Earl Grey Tea',
                          price: 19,
                          icon: Icon(
                            Icons.done,
                            size: 15,
                          ),
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconButton(
                                onPressed: () {
                                  _incrementCounter();
                                },
                                icon: Icon(Icons.add),
                                color: Color(0xff45994d),
                              ),
                              Text(
                                '$_counter',
                                style: TextStyle(
                                    color: Color(0xff45994d), fontSize: 18),
                              ),
                              IconButton(
                                onPressed: () {
                                  _decrementCounter();
                                },
                                icon: Icon(Icons.remove),
                                color: Color(0xff45994d),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5.0, right: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                      color: Colors.green[200],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TeaTile(
                          imageName: 'sample2.png',
                          teaName: 'Assam Tea',
                          price: 18,
                          icon: Icon(
                            Icons.done,
                            size: 15,
                          ),
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconButton(
                                onPressed: () {
                                  _incrementCounter();
                                },
                                icon: Icon(Icons.add),
                                color: Color(0xff45994d),
                              ),
                              Text(
                                '$_counter',
                                style: TextStyle(
                                    color: Color(0xff45994d), fontSize: 18),
                              ),
                              IconButton(
                                onPressed: () {
                                  _decrementCounter();
                                },
                                icon: Icon(Icons.remove),
                                color: Color(0xff45994d),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5.0, right: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                      color: Color(0xfff3e3c4),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TeaTile(
                          imageName: 'sample3.png',
                          teaName: 'Black Tea',
                          price: 20,
                          icon: Icon(
                            Icons.done,
                            size: 15,
                          ),
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconButton(
                                onPressed: () {
                                  _incrementCounter();
                                },
                                icon: Icon(Icons.add),
                                color: Color(0xff45994d),
                              ),
                              Text(
                                '$_counter',
                                style: TextStyle(
                                    color: Color(0xff45994d), fontSize: 18),
                              ),
                              IconButton(
                                onPressed: () {
                                  _decrementCounter();
                                },
                                icon: Icon(Icons.remove),
                                color: Color(0xff45994d),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('2102. Street Pearl Apt.'),
                      Text('MathhewKeller@gmail.com'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Hopetown Galilee - 06880'),
                      Text('+91 7002102402'),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Divider(
                    thickness: 1.5,
                    color: Colors.black26,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Subtotal',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Text('\$76.00'),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Cargo Charges'),
                      Text('\$8.00'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
