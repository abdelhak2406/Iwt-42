import 'package:flutter/material.dart';

class Stats extends StatefulWidget {
  const Stats({ Key? key }) : super(key: key);

  @override
  State<Stats> createState() => _StatsState();
}

class _StatsState extends State<Stats> {
  
  
  Widget taskTemplate(name, expenses, total, color, backgroundColor) {
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
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff39255C)
                          ),
                        ),
                        Text(
                          '-$expenses',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff39255C)
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 220,
                    child: LinearProgressIndicator(
                      color: color,
                      backgroundColor: backgroundColor,
                      value: expenses/total,
                      minHeight:3,

                    ),
                  )
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
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox (
            height: 250,
            child: Center(child: Image.asset('assets/images/chart.png')),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Container(
              margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
              decoration: BoxDecoration(
                boxShadow: [
                  new BoxShadow(
                    color: Colors.grey[350]!,
                    blurRadius: 5.0,
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10.0))
              ),
              child: SizedBox(
                height: 250,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Detailed',
                        style: TextStyle(
                          color: Color(0xff39255C),
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        children: [
                          taskTemplate('Shoping', 200, 915, Color(0xff95BDFF), Color(0xffD9DBDE)),
                          Divider(),
                          taskTemplate('Car', 500, 915, Color(0xffF1FF95), Color(0xffFBFFDE)),
                          Divider(),
                          taskTemplate('Rent', 100, 915, Color(0xff95FF96), Color(0xffDEFFDE)),
                          Divider(),
                          taskTemplate('Bills', 60, 915, Color(0xffFF9595), Color(0xffFFDEDE)),
                          Divider(),
                          taskTemplate('Food', 55, 915, Color(0xffC395FF), Color(0xffECDEFF)),
                          Divider(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}