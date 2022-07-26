import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class buttouns extends StatelessWidget {
  const buttouns({
    Key? key,
    required this.color,
    required this.onPressed,
    required this.title,
    required this.image,
  }) : super(key: key);
  final int color;
  final void Function() onPressed;
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      height: 58,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(29),
        color: Color(color),
      ),
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            primary: Colors.transparent,
            elevation: 0,
          ),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/$image.png'),
                Text(
                  title,
                  style: GoogleFonts.outfit(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
