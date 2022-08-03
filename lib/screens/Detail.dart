import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class detail_screen extends StatefulWidget {
  const detail_screen({Key? key}) : super(key: key);

  @override
  State<detail_screen> createState() => _detail_screenState();
}

class _detail_screenState extends State<detail_screen> {
  late TapGestureRecognizer _click;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _click = TapGestureRecognizer();
    _click.onTap = createnewacountclick;
  }

  @override
  void dispose() {
    // TODO: implement dispose

    _click.dispose();
    super.dispose();
  }

  void createnewacountclick() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0D14),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Detail',
          style: GoogleFonts.outfit(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Color(0xFFFFFFFF)),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/credit_screen');
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: 16),
          Container(
            width: double.infinity,
            height: 80,
            color: Colors.yellow.shade500,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('images/image_24.png'),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 19.5, vertical: 19.5),
                    child: Container(
                      child: Column(
                        children: [
                          Text(
                            textAlign: TextAlign.center,
                            'You don\t have enough balance  ',
                            style: GoogleFonts.outfit(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xFFFFFFFF)),
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            'please top up first',
                            style: GoogleFonts.outfit(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xFFFFFFFF)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/paymen_screen');
                      },
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFFFFBB0D),
                      ))
                ],
              ),
            ),
          ),
          SizedBox(height: 32),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Credits  Voucher',
                        style: GoogleFonts.outfit(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xFFFFFFFF)),
                      ),
                      Spacer(),
                      Text(
                        'Rp. 100.000',
                        style: GoogleFonts.outfit(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xFFFFFFFF)),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Text(
                        'Fee Transaction',
                        style: GoogleFonts.outfit(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xFFFFFFFF)),
                      ),
                      Spacer(),
                      Text(
                        'Rp. 10.000',
                        style: GoogleFonts.outfit(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xFFFFFFFF)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 24),
          Container(
            width: double.infinity,
            height: 61,
            color: Colors.grey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  Text(
                    'Total Payment',
                    style: GoogleFonts.outfit(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color(0xFFFFFFFF)),
                  ),
                  Spacer(),
                  Text(
                    'Rp. 110.000',
                    style: GoogleFonts.outfit(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color(0xFFFFFFFF)),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 252.5),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('images/image_25.png'),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 19.5, vertical: 19.5),
                    child: Container(
                      child: Column(
                        children: [
                          Text(
                            textAlign: TextAlign.center,
                            'all transactions are fast and safe, continuing ',
                            style: GoogleFonts.outfit(
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                color: Color(0xFFFFFFFF)),
                          ),
                          Center(
                            child: RichText(
                              text: TextSpan(
                                text: 'this you agree to the ',
                                style: GoogleFonts.nunito(
                                  fontSize: 13,
                                  color: const Color(0xFFFFFFFF),
                                ),
                                children: [
                                  TextSpan(
                                    text: ' terms and conditioin',
                                    recognizer: _click,
                                    style: GoogleFonts.outfit(
                                      color: const Color(0xFF00D261),
                                      fontSize: 16,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 27.5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/paymen_screen');
              },
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF3D5BF6),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                minimumSize: const Size(
                  327,
                  56,
                ),
              ),
              child: Text(
                'Pay Now',
                style: GoogleFonts.outfit(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
