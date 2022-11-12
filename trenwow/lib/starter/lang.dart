import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:trenwow/splasher/langSplash.dart';

class Lang extends StatefulWidget {
  @override
  State<Lang> createState() => _LangState();
}

class _LangState extends State<Lang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                child: Text('English'),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LangSplash()));
                  var locale = Locale('en', 'US');
                  Get.updateLocale(locale);
                }),
            SizedBox(
              height: MediaQuery.of(context).size.height / 60,
            ),
            ElevatedButton(
                child: Text('Hindi'),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LangSplash()));
                  var locale = Locale('hi', 'IN');
                  Get.updateLocale(locale);
                }),
            SizedBox(
              height: MediaQuery.of(context).size.height / 60,
            ),
            ElevatedButton(
                child: Text('English'),
                onPressed: () {
                  var locale = Locale('hi', ';');
                  Get.updateLocale(locale);
                }),
            SizedBox(
              height: MediaQuery.of(context).size.height / 60,
            ),
            ElevatedButton(
                child: Text('English'),
                onPressed: () {
                  var locale = Locale('hi', '');
                  Get.updateLocale(locale);
                }),
            SizedBox(
              height: MediaQuery.of(context).size.height / 60,
            ),
            ElevatedButton(
                child: Text('English'),
                onPressed: () {
                  var locale = Locale('hi', '');
                  Get.updateLocale(locale);
                })
          ],
        ),
      ),
    );
  }
}
