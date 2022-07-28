import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Setting_widget extends StatelessWidget {
  const Setting_widget({
    Key? key,
    required this.image,
    required this.title,
    required this.onPressed,
  }) : super(key: key);
  final String title;
  final String image;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('images/$image.png'),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            title,
            style: GoogleFonts.outfit(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: const Color(0xFFFFFFFF),
            ),
          ),
        ),
        Spacer(),
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            Icons.arrow_forward_ios,
            color: Color(0xFF8D9092),
          ),
        ),
      ],
    );
  }
}
