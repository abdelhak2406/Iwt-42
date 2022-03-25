// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firstapp/screens/home/dashboard.dart';
import 'package:flutter/material.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/rendering.dart';
import 'package:lucide_icons/lucide_icons.dart';

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
        tooltip: 'Add income, expense or goal',
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
          Icon(LucideIcons.home, color: Colors.white),
          Icon(LucideIcons.pieChart, color: Colors.white),
          Icon(LucideIcons.disc, color: Colors.white),
          Icon(LucideIcons.listChecks, color: Colors.white),
          Icon(LucideIcons.bot, color: Colors.white),
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