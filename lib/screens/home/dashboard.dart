// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  Widget categoryTemplate(name, expenses, color) {
    return SizedBox(
      width: 350,
      height: 70,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            new BoxShadow(
              color: Colors.white,
              blurRadius: 2.0,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //TODO:replace this by the icons
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 5, 20, 5),
              child: Container(
                width: 50.0,
                height: 50.0,
                decoration: new BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 220,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          name,
                          style:
                              TextStyle(fontSize: 12, color: Color(0xff39255C)),
                        ),
                        Text(
                          '-$expenses',
                          style:
                              TextStyle(fontSize: 12, color: Color(0xff39255C)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FractionallySizedBox(
        widthFactor: 1,
        heightFactor: 1,
        child: Container(
          decoration: BoxDecoration(color: Color(0xffAD90EC)),
          child: Column(children: [
            Flexible(
              flex: 1,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Depense : ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '10.000',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Revenue : ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '50.000',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Text(
                        '300.000.000',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          'Your balance !',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 3,
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0)),
                  ),
                  // you write your code here fait un child est go  (signé aymen)

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              'For This month we expect',
                              style: TextStyle(
                                  color: Color(0xff253A5C),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                height: 150,
                                width: 120,
                                child: Container(
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        new BoxShadow(
                                          color: Colors.grey[350]!,
                                          blurRadius: 3.0,
                                        ),
                                      ],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      color: Colors.white),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          'Expenses :',
                                          style: TextStyle(
                                              color: Color(0xff253A5C),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                        Text(
                                          '   6,500 DZD',
                                          style: TextStyle(
                                              color: Color(0xff39255C),
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12),
                                        ),
                                        Text(
                                          'Income : ',
                                          style: TextStyle(
                                              color: Color(0xff253A5C),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                        Text(
                                          '   5,640 DZD',
                                          style: TextStyle(
                                              color: Color(0xff39255C),
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12),
                                        ),
                                        Text(
                                          'Savings : ',
                                          style: TextStyle(
                                              color: Color(0xff253A5C),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                        Text(
                                          '   860 DZD',
                                          style: TextStyle(
                                              color: Color(0xff39255C),
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                  height: 140,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Image.asset(
                                        'assets/images/growntree.jpg'),
                                  )),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: SizedBox(
                              height: 205,
                              child: Column(
                                children: [
                                  Text(
                                    'Recent',
                                    style: TextStyle(
                                      color: Color(0xff39255C),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                    ),
                                  ),
                                  Expanded(
                                    child: ListView(
                                      scrollDirection: Axis.vertical,
                                      children: [
                                        categoryTemplate(
                                            'Shoping', 200, Color(0xff95BDFF)),
                                        Divider(),
                                        categoryTemplate(
                                            'Car', 500, Color(0xffFFB163)),
                                        Divider(),
                                        categoryTemplate(
                                            'Rent', 100, Color(0xff95FF96)),
                                        Divider(),
                                        categoryTemplate(
                                            'Bills', 60, Color(0xffFF9595)),
                                        Divider(),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ]),
                  )),
            )
          ]),
        ),
      ),
    );
  }
}
