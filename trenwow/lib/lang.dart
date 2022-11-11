import 'package:flutter/material.dart';
import 'package:trenwow/langSplash.dart';
import 'package:trenwow/sign.dart';

class Lang extends StatefulWidget {
  @override
  State<Lang> createState() => _LangState();
}

class _LangState extends State<Lang> {
  @override
  Widget langButton(BuildContext context, String text) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 20,
      width: MediaQuery.of(context).size.width / 3,
      child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => LangSplash()));
          },
          child: Text(
            text,
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontStyle: FontStyle.italic),
          )),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            langButton(context, 'English'),
            SizedBox(
              height: MediaQuery.of(context).size.height / 60,
            ),
            langButton(context, 'ಕನ್ನಡ'),
            SizedBox(
              height: MediaQuery.of(context).size.height / 60,
            ),
            langButton(context, 'हिंदी'),
            SizedBox(
              height: MediaQuery.of(context).size.height / 60,
            ),
            langButton(context, 'தமிழ்'),
            SizedBox(
              height: MediaQuery.of(context).size.height / 60,
            ),
            langButton(context, 'తెలుగు')
          ],
        ),
      ),
    );
  }
}
