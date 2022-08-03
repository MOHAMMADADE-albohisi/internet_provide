import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Onbresd extends StatelessWidget {
  const Onbresd({
    Key? key,
    required this.title,
    required this.image,
    required this.subtitle,
  }) : super(key: key);
final String title;
final String image;
final String subtitle;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: 454,
          height: 357,
          color: Color(0xFF28364E),
          child: Image.asset('images/$image.png'),
        ),
        SizedBox(height: 32),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.outfit(
              fontSize: 36,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: GoogleFonts.outfit(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),

      ],
    );
  }
}
