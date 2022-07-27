import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class cardwidget extends StatelessWidget {
  const cardwidget({
    Key? key,
    required this.name,
    required this.image,
    required this.onPressed1,
    required this.onPressed2,
  }) : super(key: key);
  final String name;
  final String image;
  final void Function() onPressed1;
  final void Function() onPressed2;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 48,
          height: 48,
          color: Color(0xFF3D5BF6),
          child: TextButton(
            onPressed: onPressed1,
            child: Image.asset('images/$image.png'),
          ),
        ),
        TextButton(
          onPressed:onPressed2,
          child: Text(
            name,
            style: GoogleFonts.outfit(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: Color(0xFFFFFFFF),
            ),
          ),
        ),
      ],
    );
  }
}
