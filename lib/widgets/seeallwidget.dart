import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class seeallwidget extends StatelessWidget {
  const seeallwidget({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Text(
            title,
            style: GoogleFonts.outfit(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xFFFFFFFF),
            ),
          ),
          Spacer(),
          TextButton(
              onPressed: () {},
              child: Text(
                'See All',
                style: GoogleFonts.outfit(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Color(
                    0xFFFFFFFF,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
