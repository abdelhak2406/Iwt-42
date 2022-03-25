import 'package:flutter/material.dart';

class SharedAppBar extends StatefulWidget implements PreferredSizeWidget{
  String? pageTitle;

  SharedAppBar({Key? key, this.pageTitle}) : super(key: key);

  @override
  _SharedAppBarState createState() => _SharedAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(60);
}

class _SharedAppBarState extends State<SharedAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xffAD90EC),
      title: Text(
        widget.pageTitle!,
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.normal,
        ),
      ),
      elevation: 0.0,
    );
  }
}