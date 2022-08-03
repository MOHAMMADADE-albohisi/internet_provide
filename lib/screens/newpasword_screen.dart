import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class newpassword extends StatefulWidget {
  const newpassword({Key? key}) : super(key: key);

  @override
  State<newpassword> createState() => _newpasswordState();
}

class _newpasswordState extends State<newpassword> {
  late TextEditingController _password;
  late TextEditingController _newpassword;
  bool _viewpassword = true;
  bool _viewnewpasswrod = true;
  String? _passworderror;
  String ? _newpasswrderror;

  @override
  void initState() {
    super.initState();
    _password = TextEditingController();
    _newpassword = TextEditingController();
  }

  @override
  void dispose() {
    _password.dispose();
    _newpassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0D14),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/home_screen');
            },
            icon: const Icon(
              Icons.arrow_back,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          children: [
            SizedBox(height: 32),
            Text('New Pasword',
                style: GoogleFonts.outfit(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFFFFFFF))),
            SizedBox(height: 17),
            Text(
              'Create your new password to Login',
              style: GoogleFonts.outfit(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(0xFF97999B),
              ),
            ),
            SizedBox(height: 53),
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
                hintText: 'New Password',
                hintStyle: GoogleFonts.outfit(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: const Color(0xFFCBCCCD),
                ),
                hintMaxLines: 1,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade700),
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey.shade700,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Colors.red.shade700,
                    width: 1,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Colors.red.shade700,
                    width: 1,
                  ),
                ),
                constraints: BoxConstraints(
                  maxHeight: _passworderror == null ? 81 : 81,
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
            SizedBox(height: 50.5),
            TextField(
              controller: _newpassword,
              obscureText: _viewnewpasswrod,
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
                    setState(() => {_viewnewpasswrod = !_viewnewpasswrod});
                  },
                  icon: Icon(
                    _viewnewpasswrod ? Icons.visibility : Icons.visibility_off,
                    color: const Color(0xFFFFFFFF),
                  ),
                ),
                hintText: 'Confirm Password',
                hintStyle: GoogleFonts.outfit(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: const Color(0xFFCBCCCD),
                ),
                hintMaxLines: 1,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade700),
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey.shade700,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Colors.red.shade700,
                    width: 1,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Colors.red.shade700,
                    width: 1,
                  ),
                ),
                constraints: BoxConstraints(
                  maxHeight: _newpasswrderror == null ? 81 : 81,
                  minHeight: 50,
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                errorText: _newpasswrderror,
                errorStyle: GoogleFonts.nunito(),
                errorMaxLines: 1,
              ),
              maxLines: 1,
              minLines: 1,
              expands: false,
            ),
            SizedBox(height: 64),
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
              child:  Text('Reset Password',style: GoogleFonts.outfit(
                fontSize: 16,
                fontWeight: FontWeight.w500,

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
    if (_password.text.isNotEmpty&&_newpassword.text.isNotEmpty) {
      _controolervalue();
      return true;
    }
    _controolervalue();

    return false;
  }

  void _controolervalue() {
    setState(() {
      _passworderror = _password.text.isEmpty ? 'Enater a New password' : null;
      _newpasswrderror = _newpassword.text.isEmpty ? 'Enater a Confirm Password' : null;
    });
  }
  void login() {
    Navigator.pushReplacementNamed(context, '/login_screen');

  }
}
