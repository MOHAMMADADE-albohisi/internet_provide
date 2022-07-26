import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internet_provide/widgets/buttons.dart';
import 'package:internet_provide/widgets/onbresd.dart';

// ignore: camel_case_types
class onbresd_screen extends StatefulWidget {
  const onbresd_screen({Key? key}) : super(key: key);

  @override
  State<onbresd_screen> createState() => _onbresd_screenState();
}

class _onbresd_screenState extends State<onbresd_screen> {
  late PageController _pageController;
  int _curentpage = 0;
  late TapGestureRecognizer _click;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
    _click = TapGestureRecognizer();
    _click.onTap = createnewacountclick;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    _click.dispose();
    super.dispose();
  }

  void createnewacountclick() {
    print('clice');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0D14),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                physics: const BouncingScrollPhysics(),
                controller: _pageController,
                onPageChanged: (int curentpage) {
                  setState(() => {
                        _curentpage = curentpage,
                      });
                },
                children: [
                  const Onbresd(
                    title: 'Easy to buy data plan & credits',
                    image: 'image_2',
                    subtitle:
                        'Easy experience to buy data and get a lot of discount',
                  ),
                  const Onbresd(
                    title: 'Easy to control your data usage',
                    image: 'image_3',
                    subtitle:
                        'Easy to always control how much data you use every day',
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 34, vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('images/image_4.png'),
                        const SizedBox(height: 118),
                        Text(
                          'Let’s Get Started',
                          style: GoogleFonts.outfit(
                            fontSize: 36,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 24),
                        Text(
                          'Find the right data plan and what you want just in proquota',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.outfit(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 53),
                        buttouns(
                            color: (0xFF949CAD),
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, '/login_screen');
                            },
                            title: 'Sign Up With Email',
                            image: 'image_6'),
                        const SizedBox(height: 24),
                        Text(
                          'Or use instant sign up',
                          style: GoogleFonts.outfit(
                              fontSize: 16, color: const Color(0xFF97999B)),
                        ),
                        const SizedBox(height: 23),
                        buttouns(
                            color: (0xFF3D5BF6),
                            onPressed: () {
                            },
                            title: 'Sign Up with Goggle',
                            image: 'image_8'),
                        const SizedBox(height: 20),
                        buttouns(
                            color: (0xFF101010),
                            onPressed: () {},
                            title: 'Sign Up with Apple',
                            image: 'image_7'),
                        const SizedBox(
                          height: 3,
                        ),
                        Center(
                          child: RichText(
                            text: TextSpan(
                              text: 'Already Have an Account? ',
                              style: GoogleFonts.nunito(
                                color: const Color(0xFF97999B),
                              ),
                              children: [
                                TextSpan(
                                  text: 'Sign In',
                                  recognizer: _click,
                                  style: GoogleFonts.outfit(
                                    color: const Color(0xFF3D5BF6),
                                    fontSize: 16,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 48),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  child: Visibility(
                    visible: _curentpage < 2,
                    child: TabPageSelectorIndicator(
                      backgroundColor:
                          _curentpage == 0 ? Colors.blue : Colors.grey,
                      borderColor:
                          _curentpage == 0 ? Colors.blue : Colors.transparent,
                      size: 6,
                    ),
                  ),
                ),
                Align(
                  child: Visibility(
                    visible: _curentpage < 2,
                    child: TabPageSelectorIndicator(
                      backgroundColor:
                          _curentpage == 1 ? Colors.blue : Colors.grey,
                      borderColor:
                          _curentpage == 1 ? Colors.blue : Colors.transparent,
                      size: 6,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Align(
              child: Visibility(
                visible: _curentpage < 2,
                child: Container(
                  width: 335,
                  height: 56,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black38,
                          offset: Offset(0, 3),
                          blurRadius: 6)
                    ],
                    color: Colors.blue,
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      if (_curentpage < 2) {
                        _pageController.nextPage(
                          duration: const Duration(seconds: 1),
                          curve: Curves.easeInOutBack,
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      elevation: 0,
                    ),
                    child: const Text('Next'),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Align(
              child: Visibility(
                visible: _curentpage < 2,
                child: TextButton(
                  onPressed: () {
                    _pageController.animateToPage(2,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOutBack);
                  },
                  child: Text(
                    'Skip',
                    style: GoogleFonts.outfit(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),SizedBox(height: 37),
          ],
        ),
      ),
    );
  }
}
