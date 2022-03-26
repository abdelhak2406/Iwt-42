import 'package:flutter/material.dart';

class BottomDrawer extends StatefulWidget {
  const BottomDrawer({Key? key}) : super(key: key);

  @override
  State<BottomDrawer> createState() => _BottomDrawerState();
}

class _BottomDrawerState extends State<BottomDrawer> {
  bool isItIncome = true;
  String uselessVar="";

  Widget income() {
    return Container(
      padding:EdgeInsets.all(10.0),
      child:new Form(
          //key: this._formKey,
          child: new ListView(
            children: <Widget>[
              // We will add fields here.
                // new TextFormField(
                // keyboardType: TextInputType.emailAddress, // Use email input type for emails.
                // decoration: new InputDecoration(
                //   hintText: 'you@example.com',
                //   labelText: 'E-mail Address'
                // )
            ],
      )
    ));

  }

  Widget expenses() {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 80,
          width: 450,
          child: Row(
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  child: Center(child: Text('Income')),
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  child: Center(child: Text('Expenses')),
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            isItIncome ? income() : expenses(),
            SizedBox(
              width: 300,
              child: GestureDetector(
                onTap: (() => {
                  print('ff'),
                  if (Navigator.of(context).canPop()) {
                    Navigator.of(context).pop()
                  }
                }),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xff8B56E3),
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Center(
                      child: Text(
                        'Validate',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),  
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
