import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:trenwow/Signer/sign.dart';
import 'package:trenwow/starter/load.dart';

void main() => runApp(TrenWow());

class TrenWow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: Sign());
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
                      'Hey There..',
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
                    'Trenwow welcomes you... :)',
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
