import 'package:firstapp/screens/home/dashboard.dart';
import 'package:firstapp/screens/wrapper.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(IWDApp());
}

class IWDApp extends StatefulWidget {
  // This widget is the root of the application.
  @override
  _IWDAppState createState() => _IWDAppState();
}

class _IWDAppState extends State<IWDApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/dashboard': (context) => Dashboard(),
      },
      home: Wrapper(),
    );
  }
}