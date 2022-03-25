import 'package:flutter/material.dart';

class Stats extends StatefulWidget {
  const Stats({ Key? key }) : super(key: key);

  @override
  State<Stats> createState() => _StatsState();
}

class _StatsState extends State<Stats> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container  (
          child: Image.asset('assets/images/chart.png'),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10.0))
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Detailed',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}