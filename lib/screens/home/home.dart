// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firstapp/screens/home/log.dart';
import 'package:firstapp/shared/app_bar.dart';
import 'package:flutter/material.dart';

import 'package:firstapp/screens/home/dashboard.dart';
import 'package:firstapp/screens/home/goals.dart';
import 'package:firstapp/screens/home/predictions.dart';
import 'package:firstapp/screens/home/stats.dart';

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

  static final List<Widget> _screens = <Widget>[
    Dashboard(),
    Stats(),
    Predictions(),
    Goals(),
    Log()
  ];

  static final List<String> _appBarName = <String>[
    "Dashboard",
    "Statistics",
    "Finences Assistant",
    "Goals and challenges",
    "Logs"
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarName[_currentIndex] != "Dashboard" ? SharedAppBar(pageTitle: _appBarName[_currentIndex]) : null,
      floatingActionButton: _appBarName[_currentIndex] != "Dashboard" ? null : FloatingActionButton(
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
          Icon(LucideIcons.bot, color: Colors.white),
          Icon(LucideIcons.disc, color: Colors.white),
          Icon(LucideIcons.listChecks, color: Colors.white),
        ],
        onTap: (index){
          setState(() {
            _currentIndex=index;
          });
        },
      ),
      body: _screens[_currentIndex],
    );
  }
}