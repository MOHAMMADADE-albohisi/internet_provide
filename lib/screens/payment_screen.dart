import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class paymen_screen extends StatefulWidget {
  const paymen_screen({Key? key}) : super(key: key);

  @override
  State<paymen_screen> createState() => _paymen_screenState();
}

class _paymen_screenState extends State<paymen_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0D14),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Payment Method',
          style: GoogleFonts.outfit(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Color(0xFFFFFFFF)),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/detail_screem');
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          children: [
            SizedBox(height: 32),
            Row(
              children: [
                Image.asset('images/image_26.png'),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13,),
                  child: Text(
                    'Your Wallet',
                    style: GoogleFonts.outfit(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color(0xFFFFFFFF),),
                  ),
                )
              ],
            ),
            Text('Quick and easy payment, with wallet',
              style: GoogleFonts.outfit(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Color(0xFFFFFFFF),),
            ),
            SizedBox(height: 24),
            Container(
              width: double.infinity,
              height: 58,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color(0xFF28364E),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Image.asset('images/image_27.png'),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text('Wallet',
                        style: GoogleFonts.outfit(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0xFF3D5BF6),),),
                    ),
                    Spacer(),
                    Image.asset('images/image_28.png')
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 58,
              color: Colors.yellow.shade500,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text('Top up first',
                        style: GoogleFonts.outfit(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xFFFFFFFF),),),
                    ),
                    Spacer(),
                    IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: Color(0xFFFFBB0D),),)
                  ],
                ),
              ),
            ),
            SizedBox(height: 32),
            Row(
              children: [
                Image.asset('images/image_26.png'),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13,),
                  child: Text(
                    'Virtual Account',
                    style: GoogleFonts.outfit(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color(0xFFFFFFFF),),
                  ),
                )
              ],
            ),
            Text('Quick and easy payment, with Virtual Account',
              style: GoogleFonts.outfit(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Color(0xFFFFFFFF),),
            ),
          ],
        ),
      ),
    );
  }
}
