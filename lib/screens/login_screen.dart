import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class login_screen extends StatefulWidget {
  const login_screen({Key? key}) : super(key: key);

  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  late TextEditingController _email;
  late TextEditingController _password;
  late TapGestureRecognizer _click;
  bool _viewpassword = true;
  bool _remember = true;
  String? _emailerror;
  String? _passworderror;

  @override
  void initState() {
    super.initState();
    _email = TextEditingController();
    _password = TextEditingController();
    _click = TapGestureRecognizer();
    _click.onTap = createnewacountclick;
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    _click.dispose();
    super.dispose();
  }

  void createnewacountclick() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0D14),
      appBar: AppBar(
        title: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/onbresd_screen');

          },
          icon: const Icon(
            Icons.arrow_back_outlined,
          ),
        ),
        backgroundColor: const Color(0xFF0A0D14),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 43),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF28364E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  minimumSize: const Size(
                    327,
                    50,
                  ),
                ),
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF0A0D14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        minimumSize: const Size(
                          160,
                          42,
                        ),
                      ),
                      child: Text(
                        'Login',
                        style: GoogleFonts.outfit(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/regesteruser_screen');
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        minimumSize: const Size(
                          160,
                          42,
                        ),
                      ),
                      child: Text(
                        'Register',
                        style: GoogleFonts.outfit(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 14),
              Text(
                'Hey! Welcome back 👋',
                style: GoogleFonts.outfit(
                  fontWeight: FontWeight.w500,
                  height: 0.8,
                  fontSize: 18,
                  color: const Color(0xFFFFFFFF),
                ),
              ),
              const SizedBox(height: 49),
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
                  hintText: 'Input Email',
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
              const SizedBox(height: 24),
              TextField(
                controller: _password,
                obscureText: _viewpassword,
                style: GoogleFonts.outfit(
                  color: const Color(0xFFFFFFFF),
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xFF28364E),
                  prefixIcon: const Icon(
                    Icons.key,
                    color: Color(0xFFFFFFFF),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() => {_viewpassword = !_viewpassword});
                    },
                    icon: Icon(
                      _viewpassword ? Icons.visibility : Icons.visibility_off,
                      color: const Color(0xFFFFFFFF),
                    ),
                  ),
                  hintText: 'Input Password',
                  hintStyle: GoogleFonts.outfit(color: const Color(0xFFFFFFFF)),
                  hintMaxLines: 1,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade700),
                    borderRadius: BorderRadius.circular(20),
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
                  constraints: BoxConstraints(
                    maxHeight: _passworderror == null ? 56 : 81,
                    minHeight: 50,
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                  errorText: _passworderror,
                  errorStyle: GoogleFonts.nunito(),
                  errorMaxLines: 1,
                ),
                maxLines: 1,
                minLines: 1,
                expands: false,
              ),
              const SizedBox(height: 26),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() => {_remember = !_remember});
                    },
                    icon: Icon(
                      _remember
                          ? Icons.check_box_outline_blank
                          : Icons.check_box,
                      color: const Color(0xFF8D9092),
                    ),
                  ),
                  Text(
                    'Remember me',
                    style: GoogleFonts.outfit(
                      color: const Color(0xFF8D9092),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/forget_screen');
                    },
                    child: Text(
                      'forgot password?',
                      style: GoogleFonts.outfit(
                        color: const Color(0xFF3D5BF6),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () => performaLogin(),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF28364E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  minimumSize: const Size(
                    327,
                    56,
                  ),
                ),
                child: const Text('LOGIN'),
              ),
              const SizedBox(height: 32),
              Container(
                width: 327,
                height: 56,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29),
                ),
                child: ElevatedButton(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF28364E),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('images/image_9.png'),
                      ],
                    )),
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
    if (_email.text.isNotEmpty && _password.text.isNotEmpty) {
      _controolervalue();
      return true;
    }
    _controolervalue();

    return false;
  }

  void _controolervalue() {
    setState(() {
      _emailerror = _email.text.isEmpty ? 'Enter Email adress' : null;
      _passworderror = _password.text.isEmpty ? 'Enater password' : null;
    });
  }

  void login() {
    Navigator.pushReplacementNamed(context, '/home_screen');
  }
}
