import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Verify_screen extends StatefulWidget {
  const Verify_screen({Key? key}) : super(key: key);

  @override
  State<Verify_screen> createState() => _Verify_screenState();
}

class _Verify_screenState extends State<Verify_screen> {
  late TextEditingController _Verify;
  String ? _Verifyerror;
  late TapGestureRecognizer _click;
  @override
  void initState() {
    super.initState();
    _Verify = TextEditingController();
    _click = TapGestureRecognizer();
    _click.onTap = createnewacountclick;

  }

  @override
  void dispose() {
    _Verify.dispose();
    _click.dispose();
    super.dispose();
  }

  void createnewacountclick(){
    print('resend massege');
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0D14),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/login_screen');
            },
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xFFFFFFFF),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          children: [
            Text(
              'Verify Code',
              style: GoogleFonts.outfit(
                fontWeight: FontWeight.w500,
                fontSize: 24,
                color: Color(0xFFFFFFFF),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'The confimation code was sent via email mohamamdalbohisi@gmail.com',
              style: GoogleFonts.outfit(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(0xFF97999B),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              keyboardType: TextInputType.number,
              controller: _Verify,
              style: GoogleFonts.outfit(
                color: const Color(0xFFFFFFFF),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xFF28364E),
                constraints: BoxConstraints(
                  minHeight: 50,
                  maxHeight: _Verifyerror == null ? 81 : 81,
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 24),
                hintText: 'Input Verify Code ',
                hintStyle: GoogleFonts.nunito(color: const Color(0xFFFFFFFF)),
                hintMaxLines: 1,
                errorText: _Verifyerror,
                errorStyle: GoogleFonts.outfit(),
                errorMaxLines: 1,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.grey.shade700,
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.grey.shade700,
                    width: 1,
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.red.shade700,
                    width: 1,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.red.shade700,
                    width: 1,
                  ),
                ),
              ),
              minLines: null,
              maxLines: null,
              expands: true,
              maxLength: 4,
            ),
            SizedBox(height: 48),
            Center(
              child: RichText(
                text: TextSpan(text: 'Dont get the code? ',
                    style: GoogleFonts.outfit(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF97999B),
                    ),
                    children: [
                      TextSpan(text: 'Resend',
                          recognizer: _click,
                          style: GoogleFonts.outfit(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF3D5BF6),

                          )
                      )
                    ]
                ),
              ),
            ),
            SizedBox(height: 123),
            ElevatedButton(
              onPressed: () => performaLogin(),
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
              child:  Text('Verify Now',style: GoogleFonts.outfit(
                fontWeight: FontWeight.w500,
                fontSize: 16,

              ),),
            ),

          ],
        ),
      ),
    );
  }
  void performaLogin() {
    if (checkData()) {
      login();
    }
  }

  bool checkData() {
    if (_Verify.text.isNotEmpty ) {
      _controolervalue();
      return true;
    }
    _controolervalue();

    return false;
  }

  void _controolervalue() {
    setState(() {
      _Verifyerror = _Verify.text.isEmpty ? 'Enter Email adress' : null;

    });
  }

  void login() {
    Navigator.pushReplacementNamed(context, '/home_screen');
  }
}
