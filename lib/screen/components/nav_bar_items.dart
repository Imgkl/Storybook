import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';


class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List<bool> selected = [
    true,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  void select(int n) {
    for (int i = 0; i < 10; i++) {
      if (i != n) {
        selected[i] = false;
      } else {
        selected[i] = true;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          NavBarItem(
            color: Color(0xff81D8D0),
            projectName: 'Home',
            icon: Feather.home,
            active: selected[0],
            touched: () {
              setState(() {
                select(0);
              });
            },
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 30.0, top: 25.0, bottom: 10.0),
            child: Text(
              'Categories',
              style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.white),
            ),
          ),
          NavBarItem(
            color: Color(0xffFF4C60),
            projectName: 'Buttons',
            icon: Feather.box,
            active: selected[1],
            touched: () {
              setState(() {
                select(1);
              });
            },
          ),
          NavBarItem(
            color: Color(0xff6C6CE5),
            projectName: 'Micro animations',
            icon: Feather.move,
            active: selected[2],
            touched: () {
              setState(() {
                select(2);
              });
            },
          ),
          NavBarItem(
            color: Color(0xffFAAA1E),
            projectName: 'Cards',
            icon: Feather.credit_card,
            active: selected[3],
            touched: () {
              setState(() {
                select(3);
              });
            },
          ),
          NavBarItem(
            color: Color(0xff45B8AC),
            projectName: 'Screen Animations',
            icon: Feather.loader,
            active: selected[4],
            touched: () {
              setState(() {
                select(4);
              });
            },
          ),
          NavBarItem(
            color: Color(0xffE15D44),
            projectName: 'Dialog boxes',
            icon: Feather.alert_circle,
            active: selected[5],
            touched: () {
              setState(() {
                select(5);
              });
            },
          ),
          NavBarItem(
            color: Color(0xffC3447A),
            projectName: 'Nav bars',
            icon: Feather.square,
            active: selected[6],
            touched: () {
              setState(() {
                select(6);
              });
            },
          ),
          NavBarItem(
            color: Color(0xff00A170),
            projectName: 'Search bars',
            icon: Feather.search,
            active: selected[7],
            touched: () {
              setState(() {
                select(7);
              });
            },
          ),
          NavBarItem(
            color: Color(0xffD1B894),
            projectName: 'Effects',
            icon: Feather.aperture,
            active: selected[8],
            touched: () {
              setState(() {
                select(8);
              });
            },
          ),
          NavBarItem(
            color: Color(0xff9E4624),
            projectName: 'Tools',
            icon: AntDesign.tool,
            active: selected[9],
            touched: () {
              setState(() {
                select(9);
              });
            },
          ),
        ],
      ),
    );
  }
}

class NavBarItem extends StatefulWidget {
  final IconData icon;
  final Function touched;
  final String projectName;
  final bool active;
  final Color color;
  NavBarItem(
      {this.icon, this.touched, this.active, this.projectName, this.color});
  @override
  _NavBarItemState createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  bool hovered = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.touched();
      },
      child: MouseRegion(
        onEnter: (value) {
          setState(() {
            hovered = true;
          });
        },
        onExit: (value) {
          setState(() {
            hovered = false;
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 275),
          height: 75.0,
          width: (widget.active) ? 220.0 : 180.0,
          decoration: BoxDecoration(
              color: (hovered || widget.active) ? widget.color : Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 20.0,
                  spreadRadius: 5.0,
                ),
              ]),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 30.0,
                        width: 30.0,
                        child: Icon(
                          widget.icon,
                          color: (widget.active || hovered)
                              ? Colors.white
                              : Colors.black,
                          size: 20.0,
                        ),
                        // decoration: BoxDecoration(
                        //   borderRadius: BorderRadius.circular(30.0),
                        //   color: Colors.black,
                        // ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Container(
                          child: Text(
                            widget.projectName,
                            style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.0,
                              color: hovered || widget.active
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
