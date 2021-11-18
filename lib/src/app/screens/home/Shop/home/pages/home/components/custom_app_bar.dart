import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 60,
        child: Row(
          children: [
            Hero(
              tag: 'intro',
              child: Image.asset(
                'assets/images/logo_black.png',
                width: 100,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 60,
                width: size.width * 0.5,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: size.height * 0.015,
                    bottom: size.height * 0.015,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(
                        top: size.height * 0.03,
                        left: size.width * 0.01,
                      ),
                      hintText: 'Search',
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.bold),
                      border: InputBorder.none,
                      suffixIcon: const Padding(
                        padding: EdgeInsets.only(top: 10, right: 5),
                        child: Icon(
                          Icons.search,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Icon(Icons.dehaze_rounded)
          ],
        ),
      ),
    );
  }
}
