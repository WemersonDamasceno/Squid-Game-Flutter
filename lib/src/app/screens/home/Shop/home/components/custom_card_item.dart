import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCardItem extends StatelessWidget {
  final String pathImg;
  final String nameItem;
  const CustomCardItem(
      {Key? key, required this.pathImg, required this.nameItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 60.0, right: 4.0),
          child: SizedBox(
            height: size.height * 0.38,
            width: size.width * 0.42,
            child: Card(
              elevation: 2,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          nameItem,
                          style: GoogleFonts.poppins(
                              fontSize: size.width * 0.04,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Image.asset(
                          "assets/images/star.png",
                          height: size.height * 0.05,
                          width: size.width * 0.05,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 12,
                      left: 8,
                      right: 8,
                    ),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.42,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "View details",
                          style: GoogleFonts.poppins(
                              fontSize: 14, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: -size.height * 0.02,
          right: size.width * 0.001,
          child: Image.asset(
            pathImg,
            width: size.width * 0.45,
            height: size.width * 0.8,
          ),
        ),
      ],
    );
  }
}
