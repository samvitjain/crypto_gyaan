import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreatorTag extends StatelessWidget {
  const CreatorTag({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Crafted with ❤ by samvit.xyz [WIP]',
      style: GoogleFonts.quicksand(
        color: const Color.fromARGB(255, 38, 45, 59),
        letterSpacing: 2,
      ),
    );
  }
}

class TitleWidget extends StatelessWidget {
  TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20.0,
        left: 10,
        bottom: 10,
      ),
      child: Text(
        title,
        style: GoogleFonts.quicksand(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          letterSpacing: 2,
          color: Colors.blueGrey,
        ),
      ),
    );
  }
}
