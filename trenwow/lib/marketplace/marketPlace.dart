import 'package:flutter/material.dart';
import 'marketCard.dart';

class MarketPlace extends StatefulWidget {
  @override
  State<MarketPlace> createState() => _MarketPlaceState();
}

class _MarketPlaceState extends State<MarketPlace> {
  void remover() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
   
          Expanded(
            child: ListView(addRepaintBoundaries: true, children: [
              SizedBox(
                height: 10,
              ),
              MarketCard(),
              MarketCard(),
              MarketCard(),
              MarketCard()
            ]),
          ),
        ],
      ),
    );
  }
}
