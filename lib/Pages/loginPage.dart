// ignore_for_file: camel_case_types, file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'signup_page.dart';
import 'welcomePage.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

// ignore: camel_case_types
class _loginPageState extends State<loginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff45994D),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      color: Colors.white,
                      icon: const Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignupPage(),
                          ),
                        );
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, top: 25),
                child: const Text(
                  "Log In",
                  style: TextStyle(
                    fontSize: 34.0,
                    color: Color(0xffe0f3d7),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Divider(
                color: Color(0xffa6d388),
                height: 10.0,
                thickness: 3.0,
                endIndent: 282.0,
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    topRight: Radius.circular(50.0),
                  ),
                  color: Colors.white,
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Color(0XFFC6D4BF),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 25,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Username',
                            hintText: 'Enter your name',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(height: 30.0),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Color(0XFFC6D4BF),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 25,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Password',
                            hintText: 'Enter your Password',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Forgot your password"),
                          Image.asset('assets/images/question.png', width: 20),
                        ],
                      ),
                      SizedBox(height: 30.0),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const WelcomePage(),
                            ),
                          );
                        },
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(20),
                          child: Text(
                            "Log In",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18.0,
                              fontFamily: 'Archivo',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          primary: Color(0xff45994D),
                        ),
                      ),
                      SizedBox(height: 80),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => loginPage(),
                            ),
                          );
                        },
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 18,
                            backgroundImage:
                                AssetImage('assets/images/google.png'),
                            backgroundColor: Colors.white70,
                          ),
                          title: Text(
                            "Continue with Google",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontFamily: 'Archivo',
                            ),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          primary: Color(0xFFD8E8D1),
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => loginPage(),
                            ),
                          );
                        },
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 18,
                            backgroundImage:
                                AssetImage('assets/images/facebook.png'),
                            backgroundColor: Colors.white70,
                          ),
                          title: Text(
                            "Continue with Facebook",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontFamily: 'Archivo',
                            ),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          primary: Colors.white54,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
