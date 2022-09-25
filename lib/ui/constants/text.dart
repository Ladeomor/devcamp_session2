import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class AppText extends StatelessWidget {
  double size;
  String? text;
  final Color color;
  AppText({Key? key,
    required this.text,
    this.size = 16,
    required this.color }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: GoogleFonts.breeSerif(
          color: color,
          fontSize: size,
      ),
    );
  }
}


class AppLargeText extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  AppLargeText({Key? key,
    required this.text,
    this.size = 24,
    required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.breeSerif(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.bold
      ),
    );
  }
}


