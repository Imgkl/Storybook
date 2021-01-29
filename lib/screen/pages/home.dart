import 'package:fl_catalogue/screen/components/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 48.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text("\n\n\n\n\nFlCatalogue,",
                style: GoogleFonts.quicksand(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 60.0,
                    color: Colors.black)),
          ),
          Center(
              child: Text("Sneak-peek into the world of cool Flutter UI.",
                  style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0,
                      color: Colors.black))),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: PrimaryButton(
                  projectName: "Get Started",
                  color: Colors.orangeAccent,
                  icon: Feather.file_text,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28.0, left: 20),
                child: PrimaryButton(
                  projectName: "Github",
                  color: Colors.teal,
                  icon: Feather.github,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
