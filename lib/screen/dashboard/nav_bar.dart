import 'package:fl_catalogue/screen/components/nav_bar_items.dart';
import 'package:flutter/material.dart';



class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: 250.0,
        color: Color(0xff333951),
        child: NavBar(),
      ),
    );
  }
}
