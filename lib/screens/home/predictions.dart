import 'package:flutter/material.dart';

class Predictions extends StatefulWidget {
  const Predictions({ Key? key }) : super(key: key);

  @override
  State<Predictions> createState() => _PredictionsState();
}

class _PredictionsState extends State<Predictions> {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Have a glimpse to the future',
            style: TextStyle(
              fontSize: 22,
              color: Color(0xff39255C),
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(
            height: 200,
            width: 220,
            child: Padding(
              padding: const EdgeInsets.only(left:20.0),
              child: Image.asset('assets/images/whole_crystal.png'),
            )
          ),
          Text(
            'Based on 3 months of your income and expenses',
            style: TextStyle(
              fontSize: 12,
              color: Color(0xff39255C),
              fontWeight: FontWeight.bold
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Image.asset('assets/images/mock1.png'),
            )
              
          ),
          Text(
            'Let’s put this money to work, create a goal !',
            style: TextStyle(
              fontSize: 12,
              color: Color(0xff39255C),
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(
            width: 300,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff8B56E3),
                borderRadius: BorderRadius.all(Radius.circular(20.0))
            ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Center(
                  child: Text(
                    'Create a Goal',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}