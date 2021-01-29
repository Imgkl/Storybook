import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 48.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text("\n\n\n\n\n\nHi, Buttons",
                style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.bold,
                    fontSize: 50.0,
                    color: Colors.black)),
          ),
        ],
      ),
    );
  }
}
