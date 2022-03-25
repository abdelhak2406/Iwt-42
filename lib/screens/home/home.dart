// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firstapp/screens/home/dashboard.dart';
import 'package:flutter/material.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/rendering.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  int _currentIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        tooltip: 'add income, expense or goal',
        backgroundColor: Color(0xffAD90EC),
        child: Icon(Icons.add),
        onPressed: () => {},
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Color(0xffAD90EC),
        buttonBackgroundColor: Color(0xffAD90EC),
        backgroundColor: Colors.white,
        animationDuration: Duration(seconds: 1),
        animationCurve: Curves.bounceOut,
        items: <Widget> [
          Icon(Icons.home, color: Colors.white),
          Icon(Icons.home, color: Colors.white),
          Icon(Icons.home, color: Colors.white),
          Icon(Icons.home, color: Colors.white)
        ],
        onTap: (index){
          setState(() {
            _currentIndex=index;
          });
        },
      ),
      body: Dashboard(),
    );
  }
}