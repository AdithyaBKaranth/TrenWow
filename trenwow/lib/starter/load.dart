import 'dart:math' as math;
import 'package:flutter/scheduler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trenwow/Signer/sign.dart';

class Load extends StatefulWidget {
  @override
  State<Load> createState() => LoadState();
}

class LoadState extends State<Load> with TickerProviderStateMixin {
  bool selected = false;
  late AnimationController _animationController =
      AnimationController(vsync: this, duration: Duration(seconds: 2))
        ..repeat();

  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        selected = !selected;
      });
    });
    SchedulerBinding.instance.addPostFrameCallback((_) {
      Future.delayed(Duration(seconds: 4), () {
        _navigateToSign();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _navigateToSign() async {
    await Future.delayed(Duration(milliseconds: 2000));
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => Sign()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: AnimatedContainer(
                curve: Curves.fastOutSlowIn,
                alignment: selected ? Alignment.center : Alignment.topCenter,
                child:
                    ClipRRect(child: Image.asset('assets/images/trenwow.png')),
                height: selected ? 350 : 300,
                width: selected ? 350 : 300,
                color: selected ? Colors.black : Colors.black,
                duration: Duration(seconds: 2),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 4,
            ),
            Center(
              child: Text(
                'L'.tr,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
                textAlign: TextAlign.center,
              ),
            ),
            Center(
              child: AnimatedBuilder(
                  animation: _animationController,
                  child: Icon(
                    Icons.settings,
                    color: Colors.white,
                    size: 70,
                  ),
                  builder: (context, child) {
                    return Transform.rotate(
                      angle: _animationController.value * math.pi * 5.0,
                      child: child,
                    );
                  }),
            )
          ],
        ));
  }
}
