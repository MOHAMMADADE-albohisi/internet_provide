import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internet_provide/widgets/Setting_widget.dart';

class setting_screen extends StatefulWidget {
  const setting_screen({Key? key}) : super(key: key);

  @override
  State<setting_screen> createState() => _setting_screenState();
}

class _setting_screenState extends State<setting_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF0A0D14),
        appBar: AppBar(
          backgroundColor: const Color(0xFF0A0D14),
          elevation: 0,
          title: Text(
            'Settings',
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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ListView(
            children: [
              const SizedBox(height: 40.5),
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
              const SizedBox(height: 91),
              Row(
                children: [
                  Text(
                    'Account Settings',
                    style: GoogleFonts.outfit(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFFFFFFFF),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Setting_widget(
                      image: 'image_31',
                      title: 'Edit Profile',
                      onPressed: () {}),
                  const SizedBox(height: 30),
                  Setting_widget(
                      image: 'image_32',
                      title: 'Change Password',
                      onPressed: () {}),
                  const SizedBox(height: 32),
                  Text(
                    'Other',
                    style: GoogleFonts.outfit(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFFFFFFFF),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Setting_widget(
                      image: 'image_33', title: 'Language', onPressed: () {}),
                  const SizedBox(height: 30.5),
                  Setting_widget(
                    image: 'image_34',
                    title: 'FAQ',
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 90),
              TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/login_screen');
                  },
                  child: Text(
                    'Logout',
                    style: GoogleFonts.outfit(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: const Color(0xFFE50000),
                    ),
                  ))
            ],
          ),
        ));
  }
}
