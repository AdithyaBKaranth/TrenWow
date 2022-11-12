import 'package:flutter/material.dart';
import 'package:trenwow/Signer/login.dart';
import 'package:trenwow/themain.dart/home.dart';

class GoogleSplash extends StatefulWidget {
  @override
  State<GoogleSplash> createState() => GoogleSplashState();
}

class GoogleSplashState extends State<GoogleSplash> {
  @override
  void initState() {
    _navigateToDob();
    super.initState();
  }

  void _navigateToDob() async {
    await Future.delayed(Duration(milliseconds: 2000));
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => Home()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 4,
          ),
          Center(
            child: Text(
              'Verifying your email...',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 4,
          ),
          CircularProgressIndicator(
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
