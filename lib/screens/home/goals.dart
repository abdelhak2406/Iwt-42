import 'package:flutter/material.dart';

class Goals extends StatefulWidget {
  const Goals({ Key? key }) : super(key: key);

  @override
  State<Goals> createState() => _GoalsState();
}

class _GoalsState extends State<Goals> {

  List<bool> _isOpen = [false, false, false, false, false];

  Widget HeaderTemplate(challengenum, percent) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Challenge $challengenum',
            style: TextStyle(
              color: Color(0xff39255C),
              fontWeight: FontWeight.bold,
              fontSize: 11,
            ),

          ),
          SizedBox(
            width: 100,
            child: LinearProgressIndicator(
              color: Color(0xffE38056),
              backgroundColor: Color(0xffDBD7E0),
              value: percent,
              minHeight:10,
            ),
          ),
        ],
      ),
    );
  }

  Widget BodyTemplate() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        style: TextStyle(
          color: Color(0xff39255C),
          fontSize: 10,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 140,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset('assets/images/money.png'),
            )
            ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: ExpansionPanelList(
                  children: [
                    ExpansionPanel(headerBuilder: (context, isOpen) { return HeaderTemplate(1, 0.5);}, body: BodyTemplate(), isExpanded: _isOpen[0]),
                    ExpansionPanel(headerBuilder: (context, isOpen) { return HeaderTemplate(2, 0.75);}, body: BodyTemplate(), isExpanded: _isOpen[1]),
                    ExpansionPanel(headerBuilder: (context, isOpen) { return HeaderTemplate(3, 0.25);}, body: BodyTemplate(), isExpanded: _isOpen[2]),
                    ExpansionPanel(headerBuilder: (context, isOpen) { return HeaderTemplate(4, 0.25);}, body: BodyTemplate(), isExpanded: _isOpen[3]),
                    ExpansionPanel(headerBuilder: (context, isOpen) { return HeaderTemplate(5, 0.25);}, body: BodyTemplate(), isExpanded: _isOpen[4]),
              
                  ],
                  expansionCallback: (i, isOpen) => 
                    setState(() {
                      _isOpen[i] = !isOpen;
                    }),
                ),
              ),
            ),
          )
        ],
        
      ),
    );
  }
}