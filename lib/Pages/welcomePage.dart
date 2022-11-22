// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tea_haven/Cart/shopping_cart.dart';
import 'package:tea_haven/Pages/favorite.dart';
import 'package:tea_haven/Products/Products.dart';
import 'package:tea_haven/Utils/tea_card.dart';
import 'package:tea_haven/Utils/topseller_tea.dart';

import 'home.dart';
import 'favorite.dart';
import 'person.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff45994D),

      // Bottom Navigator
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: EdgeInsets.all(20),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
            color: Color(0xffeffee8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
                icon: Icon(Icons.house_outlined),
                iconSize: 32,
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Favorite()),
                  );
                },
                icon: Icon(Icons.favorite_border_outlined),
                iconSize: 32,
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ShoppingCart()),
                  );
                },
                icon: Icon(Icons.shopping_cart_outlined),
                iconSize: 32,
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Person()),
                  );
                },
                icon: Icon(Icons.person_outline_sharp),
                iconSize: 32,
              ),
            ],
          ),
        ),
      ),

      // Body
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            
              Container(
                margin: EdgeInsets.only(top: 30, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Welcome',
                      style: TextStyle(
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      "Find and order your tea",
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                  ],
                ),
              ),

              // Main Body
              Container(
                height: MediaQuery.of(context).size.height,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                margin: const EdgeInsets.only(top: 30),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Search Engine.
                    Container(
                      height: 50,
                      margin: const EdgeInsets.only(top: 20, bottom: 20),
                      width: MediaQuery.of(context).size.width * 0.90,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const ListTile(
                          leading: Icon(
                            Icons.search,
                            size: 35,
                          ),
                          title: Text(
                            'Search for your tea',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      child: ListView(
                        // This next line does the trick.
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ProductCategory(),
                                ),
                              );
                            },
                            child: Text(
                              'Black',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          TextButton(
                            child: Text(
                              'Blue',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ProductCategory(),
                                ),
                              );
                            },
                          ),
                          TextButton(
                            child: Text(
                              'Green',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ProductCategory(),
                                ),
                              );
                            },
                          ),
                          TextButton(
                            child: Text(
                              'Red',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ProductCategory(),
                                ),
                              );
                            },
                          ),
                          TextButton(
                            child: Text(
                              'Oolong',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ProductCategory(),
                                ),
                              );
                            },
                          ),
                          TextButton(
                            child: Text(
                              'Black',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ProductCategory(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    // Tea Demo Card
                    SizedBox(
                      height: 200,
                      child: ListView(
                        // This next line does the trick.
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          TeaCard(
                            color: Color(0xffA6D388),
                            imageName: 'sample1.png',
                            teaName: 'Matcha Tea',
                            price: 19,
                            icon: Icon(Icons.masks),
                            weight: '350 grams',
                          ),
                          TeaCard(
                            color: Color(0xfffad692),
                            imageName: 'sample2.png',
                            teaName: 'Zen super Tea',
                            price: 14,
                            icon: Icon(Icons.masks),
                            weight: '350 grams',
                          ),
                          TeaCard(
                            color: Color(0xffC6d4bf),
                            imageName: 'sample3.png',
                            teaName: 'Shanghai Tea',
                            price: 12,
                            icon: Icon(Icons.masks),
                            weight: '450 grams',
                          ),
                          TeaCard(
                            color: Color(0xffA6D388),
                            imageName: 'sample4.png',
                            teaName: 'Assam Tea',
                            price: 19,
                            icon: Icon(Icons.masks),
                            weight: '350 grams',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //See All
                    Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40.0, vertical: 10),
                          child: Text(
                            'See All',
                            style: TextStyle(
                                color: Color(0xff45994D), fontSize: 18),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            side: BorderSide(
                              width: 1.5,
                              color: Color(0xff45994D),
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    // Top Seller Varieties header
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Top Seller Varieties',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    // Top Varieties Card
                    topSellerVarieties(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget topSellerVarieties() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TopTeaVarieties(imagename: 'tea1.png', teaname: 'Matcha Tea'),
          SizedBox(
            width: 10,
          ),
          TopTeaVarieties(imagename: 'tea2.png', teaname: 'Earl Grey Tea'),
          SizedBox(
            width: 10,
          ),
          TopTeaVarieties(imagename: 'tea3.png', teaname: 'Mixed Tea'),
          SizedBox(
            width: 10,
          ),
          TopTeaVarieties(imagename: 'tea4.png', teaname: 'Matcha Tea'),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
