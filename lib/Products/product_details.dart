// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tea_haven/Cart/shopping_cart.dart';

class TeaDetails extends StatefulWidget {
  const TeaDetails({Key? key}) : super(key: key);

  @override
  State<TeaDetails> createState() => _TeaDetailsState();
}

class _TeaDetailsState extends State<TeaDetails> {
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

      // Body
      body: productPage(),

      // Footer
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: EdgeInsets.all(25),
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
                  '\$44',
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
                  'Add to Cart',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ShoppingCart()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  double value = 5.0;

  Widget productPage() {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                color: Colors.white,
                icon: const Icon(Icons.arrow_back_ios),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                'Assam Tea',
                style: TextStyle(fontSize: 32, color: Color(0xffe0f3d7)),
              ),
            ),
            const Divider(
              endIndent: 215,
              thickness: 3,
              color: Color(0xffa6d388),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // leaficon Indian tea
                      Row(
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.white,
                          ),
                          Text(
                            ' Indian tea',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ],
                      ),

                      // Temperature: 95C water
                      Text(
                        'Temperature: 95^C water',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),

                      // Sleep Time: 3 mins
                      Text(
                        'Sleep Time: 3 mins',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50)),
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0, right: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(
                              'assets/images/sample1.png',
                            ),
                            radius: 95,
                            backgroundColor: Colors.transparent,
                          ),

                          // Rating
                          Padding(
                            padding: EdgeInsets.only(right: 25),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.coffee_rounded,
                                    ),
                                    Text(
                                      '212',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      'Likes',
                                      style: TextStyle(fontSize: 18),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Quantity
                  Text(
                    'Quantity',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          primary: Color(0xffeffee8),
                        ),
                        child: Text(
                          ' 350 grams',
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () {},
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          primary: Color(0xffeffee8),
                        ),
                        child: Text(
                          ' 350 grams',
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () {},
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          primary: Color(0xffeffee8),
                        ),
                        child: Text(
                          ' 350 grams',
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  // Item Count
                  Text(
                    'Item Count',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(side: BorderSide.none),
                          primary: Color(0xffeffee8),
                        ),
                        child: Icon(
                          Icons.remove,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          _decrementCounter();
                        },
                      ),
                      Text(
                        '$_counter',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff508141),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          _incrementCounter();
                        },
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(side: BorderSide.none),
                          primary: Color(0xffeffee8),
                        ),
                        child: Icon(Icons.add, color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Strength Level',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 200,
                    child: Slider(
                      value: value,
                      min: 1,
                      max: 5,
                      divisions: 5,
                      label: value.toString() + '/5',
                      activeColor: Color(0xff45994d),
                      inactiveColor: Colors.black12,
                      onChanged: (_value) {
                        setState(() {
                          value = _value;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  // ADD notes for your order
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Color(0xffeffee8),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Add notes for your order',
                        labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        border: InputBorder.none,
                      ),
                    ),
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
