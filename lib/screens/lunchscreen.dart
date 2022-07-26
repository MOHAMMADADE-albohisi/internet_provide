import 'package:flutter/material.dart';

class lunchscreen extends StatefulWidget {
  const lunchscreen({Key? key}) : super(key: key);

  @override
  State<lunchscreen> createState() => _lunchscreenState();
}

class _lunchscreenState extends State<lunchscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/onbresd_screen');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: AlignmentDirectional.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topEnd,
            end: AlignmentDirectional.bottomStart,
            colors: [
              Colors.blue.shade800,
              Colors.blue.shade800,
            ],
          ),
        ),
        child: Image.asset('images/image_1.png'),

      ),
    );
  }
}
