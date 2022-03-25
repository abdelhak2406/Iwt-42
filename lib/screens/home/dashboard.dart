// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({ Key? key }) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            FractionallySizedBox(
              widthFactor: 1,
              child: Container(
                height: 180,
                margin: const EdgeInsets.only(right: 15),
                decoration: const BoxDecoration(
                  color: Color(0xff17C3B2),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(100), bottomLeft: Radius.circular(100), bottomRight: Radius.circular(100))
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25.0, 25.0, 35.0, 25.0),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '+ 9800.00',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold, 
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                'expenses : 1000.00',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal, 
                                ),
                              ),
                              Text(
                                'incomes : 2000.00',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal, 
                                ),
                              ),
                            ],
                          )
                      ],),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}