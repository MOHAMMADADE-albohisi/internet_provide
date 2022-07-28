import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internet_provide/widgets/BoxContaner.dart';

class creditscreen extends StatefulWidget {
  const creditscreen({Key? key}) : super(key: key);

  @override
  State<creditscreen> createState() => _creditscreenState();
}

class _creditscreenState extends State<creditscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF28364E),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0A0D14),
        elevation: 0,
        title: Text(
          'Purchase Credit',
          style: GoogleFonts.outfit(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: const Color(0xFFFFFFFF)),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/home_screen');
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 207,
            color: const Color(0xFF0A0D14),
            child: Column(
              children: [
                const SizedBox(height: 24),
                Container(
                  width: 327,
                  height: 72,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFF3D5BF6),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 16),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(
                                'https://ichef.bbci.co.uk/news/976/cpsprodpb/1532F/production/_122913868_dulcie.jpg',
                              ),
                            ),
                            const Spacer(flex: 16),
                            Column(
                              children: [
                                Text(
                                  'Esmeralda',
                                  style: GoogleFonts.outfit(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xFFFFFFFF),
                                  ),
                                ),
                                Text(
                                  '+62123445678912',
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.outfit(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: const Color(0xFF707070)),
                                ),
                              ],
                            ),
                            const Spacer(flex: 68),
                            Text(
                              'Rp. 100.000 ,-',
                              style: GoogleFonts.outfit(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFFFFFFFF),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 59),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, '/credit_screen');
                            },
                            child: Text(
                              'Credits',
                              style: GoogleFonts.outfit(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsetsDirectional.only(end: 10),
                            height: 4,
                            width: 87,
                            decoration: BoxDecoration(
                              color: const Color(0xFF6A90F2),
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, '/InternetQuota_screen');
                            },
                            child: Text(
                              'Internet Quota',
                              style: GoogleFonts.outfit(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFFCBCCCD),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  Row(
                    children: const [
                      BoxContaner(number: '5.000', price: '4.500'),
                      Spacer(),
                      BoxContaner(number: '10.000', price: '9.500'),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: const [
                      BoxContaner(number: '15.000', price: '14.500'),
                      Spacer(),
                      BoxContaner(number: ' 20.000', price: '19.500'),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: const [
                      BoxContaner(number: '25.000', price: '24.500'),
                      Spacer(),
                      BoxContaner(number: '50.000', price: '49.500'),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: const [
                      BoxContaner(number: '75.000', price: '74.500'),
                      Spacer(),
                      BoxContaner(number: '100.000', price: '99.500'),
                    ],
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
