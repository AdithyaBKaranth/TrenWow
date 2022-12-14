import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'LocaleString.dart';
import 'package:trenwow/User/themain.dart/starter/lang.dart';
import 'package:trenwow/User/themain.dart/starter/load.dart';

void main() => runApp(TrenWow());

class TrenWow extends StatelessWidget {
  const TrenWow({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        translations: LocalString(),
        locale: Locale('en', 'US'),
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: Lang());
  }
}

class Start extends StatefulWidget {
  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  CrossFadeState _crossFadeState = CrossFadeState.showFirst;
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), (() {
      setState(() {
        _crossFadeState = CrossFadeState.showFirst;
      });
    })).then((value) {
      setState(() {
        _crossFadeState = CrossFadeState.showSecond;
      });
    });
    SchedulerBinding.instance.addPostFrameCallback((_) {
      Future.delayed(Duration(seconds: 6), () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Load()));
      });
    });
    super.initState();
  }

//hi
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
                firstChild: Container(
                    height: 100,
                    width: 300,
                    child: Text(
                      'HT'.tr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    )),
                secondChild: Container(
                  height: 120,
                  width: 300,
                  child: Text(
                    'TWY'.tr,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                crossFadeState: _crossFadeState,
                duration: Duration(seconds: 2))
          ],
        ),
      ),
    );
  }
}
