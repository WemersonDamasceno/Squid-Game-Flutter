import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleCards extends StatelessWidget {
  final String text;
  const TitleCards({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            text,
            style:
                GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
