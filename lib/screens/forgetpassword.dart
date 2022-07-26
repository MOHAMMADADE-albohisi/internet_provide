import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class forgetpassword extends StatefulWidget {
  const forgetpassword({Key? key}) : super(key: key);

  @override
  State<forgetpassword> createState() => _forgetpasswordState();
}

class _forgetpasswordState extends State<forgetpassword> {
  late TextEditingController _email;
  String? _emailerror;
@override
  void initState() {
    super.initState();
    _email = TextEditingController();
}
@override
  void dispose() {
  _email.dispose();
  super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0D14),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/login_screen');
          },
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              SizedBox(height: 32),
              Text(
                'Forget Password?',
                textAlign: TextAlign.start,
                style: GoogleFonts.outfit(
                  fontSize: 24,
                  color: Color(0xFF707070),
                ),
              ),
              SizedBox(height: 17),
              Text(
                'Type your email, we will send you verivication code via email',
                style: GoogleFonts.outfit(

                  fontSize: 14,
                  color: Color(0xFF707070),
                ),
              ),
              SizedBox(height: 48),
              TextField(
                keyboardType: TextInputType.emailAddress,
                controller: _email,
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
                    maxHeight: _emailerror == null ? 56 : 81,
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 24),
                  hintText: 'esmeralda@gmail.com',
                  hintStyle: GoogleFonts.nunito(color: const Color(0xFFFFFFFF)),
                  hintMaxLines: 1,
                  prefixIcon: const Icon(
                    Icons.email_outlined,
                    color: Color(0xFFFFFFFF),
                  ),
                  errorText: _emailerror,
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
                    borderSide: BorderSide(
                      color: Colors.grey.shade700,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(20),
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
              ),
              SizedBox(height: 48),
              ElevatedButton(
                onPressed: () => performaLogin(),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  minimumSize: const Size(
                    327,
                    56,
                  ),
                ),
                child:  Text('Submit',style: GoogleFonts.outfit(
                  fontSize: 16,
                ),),
              ),
            ],
          ),
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
    if (_email.text.isNotEmpty ) {
      _controolervalue();
      return true;
    }
    _controolervalue();

    return false;
  }

  void _controolervalue() {
    setState(() {
      _emailerror = _email.text.isEmpty ? 'Enter Email adress' : null;

    });
  }

  void login() {
    Navigator.pushReplacementNamed(context, '/home_screen');
  }

}
