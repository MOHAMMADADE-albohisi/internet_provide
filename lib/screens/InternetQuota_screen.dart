import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Internet_Quota extends StatefulWidget {
  const Internet_Quota({Key? key}) : super(key: key);

  @override
  State<Internet_Quota> createState() => _Internet_QuotaState();
}

class _Internet_QuotaState extends State<Internet_Quota> {
  late TapGestureRecognizer _click;


  @override
  void initState() {
    super.initState();
    _click = TapGestureRecognizer();
    _click.onTap = createnewacountclick;
  }

  @override
  void dispose() {
    _click.dispose();
    super.dispose();
  }

  void createnewacountclick() {}
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
            Navigator.pushReplacementNamed(context, '/credit_screen');
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
                                color: const Color(0xFFCBCCCD),
                              ),
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
                                color: const Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsetsDirectional.only(end: 10),
                            height: 4,
                            width: 157,
                            decoration: BoxDecoration(
                              color: const Color(0xFF6A90F2),
                              borderRadius: BorderRadius.circular(2),
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
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Container(
                    width: 327,
                    height: 130,
                    margin:
                        EdgeInsetsDirectional.only(bottom: index == 5 ? 0 : 24),
                    decoration: BoxDecoration(
                      color: const Color(0xFF111622),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              TextButton(onPressed: (){
                                Navigator.pushReplacementNamed(context, '/detail_screem');
                              }, child: Text(
                                'Happy With 10GB',
                                style: GoogleFonts.outfit(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xFFFFFFFF),
                                ),
                              )),

                              const Spacer(),
                              Image.asset('images/image_23.png')
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            '1GB Streaming Game + 9GB Internet Quota, Exp in 1 month',
                            style: GoogleFonts.outfit(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFFCBCCCD),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Rp. 49.500',
                            style: GoogleFonts.outfit(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF3D5BF6),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
