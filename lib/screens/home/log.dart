import 'package:flutter/material.dart';

class Log extends StatefulWidget {
  const Log({ Key? key }) : super(key: key);

  @override
  State<Log> createState() => _LogState();
}

class _LogState extends State<Log> {


  Widget achivementItem(img, achivement) {
    return SizedBox(
      width: 350,
      height: 90,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            new BoxShadow(
              color: Colors.grey[350]!,
              blurRadius: 3.0,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.white
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 80,
              child: Image.asset('assets/images/achivement1.png')
            ),
            SizedBox(
              width: 230,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    achivement,
                    style: TextStyle(
                      color: Color(0xff39255C),
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                  Text(
                    '  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation',
                    style: TextStyle(
                      color: Color(0xff857B96),
                      fontWeight: FontWeight.normal,
                      fontSize: 9
                    ),
                    textAlign: TextAlign.justify,
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
    return Column(
      children:[
        SizedBox(
          height: 140,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset('assets/images/growntree.jpg'),
          )
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  new BoxShadow(
                    color: Colors.grey[350]!,
                    blurRadius: 3.0,
                  ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Colors.white
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'My Coupons',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: Color(0xff39255C),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/images/coupon.png'),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Achivements',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: Color(0xff39255C),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child:SizedBox(
                      child: achivementItem("assets/images/achivement1.png", "Achivement 1"),
                    )
                  ),
                  /*Padding(
                    padding: const EdgeInsets.all(15.0),
                    child:SizedBox(
                      child: achivementItem("assets/images/achivement2.png", "Achivement 2"),
                    )
                  ),*/              
                ],
              ),
            ),
          ),
        ),
      ]
      
    );
  }
}