import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class BoxContaner extends StatelessWidget {
  const BoxContaner({
    Key? key,
    required this.number,
    required this.price,
  }) : super(key: key);
  final String number;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 154,
      height: 95,
      decoration: BoxDecoration(
        color: Color(0xFF0A0D14),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
              child: Row(
                children: [
                  Text(
                   number,
                    style: GoogleFonts.outfit(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                  Spacer(),
                  Image.asset('images/image_23.png'),
                ],
              ),
            ),
          ),
          SizedBox(height: 14),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Price',
              style: GoogleFonts.outfit(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xFFFFFFFF),
              ),
            ),
          ),
          SizedBox(height: 2),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text('Rp. $price' ,style: GoogleFonts.outfit(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Color(0xFF3D5BF6),
            ),),
          )
        ],
      ),
    );
  }
}
