// ignore_for_file: file_names, camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tea_haven/Cart/shopping_cart.dart';
import 'package:tea_haven/Pages/favorite.dart';
import 'package:tea_haven/Pages/home.dart';
import 'package:tea_haven/Pages/person.dart';
import 'package:tea_haven/Utils/tea_varieties.dart';

class ProductCategory extends StatefulWidget {
  const ProductCategory({Key? key}) : super(key: key);

  @override
  State<ProductCategory> createState() => _ProductCategoryState();
}

class _ProductCategoryState extends State<ProductCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff45994D),

      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Padding(
                padding: EdgeInsets.all(8),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  'Black Tea',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
              Divider(
                endIndent: 240,
                thickness: 3,
                color: Color(0xffa6d388),
              ),
              Padding(
                padding: EdgeInsets.all(25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '- All items',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        Text(
                          'Currently in stores',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Main Body
              productpagebody(),
            ],
          ),
        ),
      ),

      // Footer
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
    );
  }

  Widget productpagebody() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
        color: Colors.white,
      ),
      padding: EdgeInsets.all(25),
      child: Column(
        children: [
          // Tea ListTile
          TeaTile(
            color: Color(0xfff3e3c4),
            imageName: 'sample1.png',
            teaName: 'Earl Grey Tea',
            price: 19,
            icon: Icon(
              Icons.done,
              size: 15,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TeaTile(
            color: Color(0xffc6d4bf),
            imageName: 'sample2.png',
            teaName: 'Darjeeling Tea',
            price: 17,
            icon: Icon(
              Icons.done,
              size: 12,
            ),
          ),

          SizedBox(
            height: 15,
          ),
          TeaTile(
            color: Color(0xffa6d388),
            imageName: 'sample3.png',
            teaName: 'English Tea',
            price: 12,
            icon: Icon(
              Icons.done,
              size: 12,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TeaTile(
            color: Color(0xfffad692),
            imageName: 'sample4.png',
            teaName: 'Assam Tea',
            price: 19,
            icon: Icon(
              Icons.done,
              size: 12,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TeaTile(
            color: Color(0xffa6d388),
            imageName: 'sample3.png',
            teaName: 'English Tea',
            price: 12,
            icon: Icon(
              Icons.done,
              size: 12,
            ),
          ),
        ],
      ),
    );
  }
}
