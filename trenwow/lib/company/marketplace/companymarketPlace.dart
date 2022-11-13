import 'package:flutter/material.dart';
import 'companymarketcard.dart';

class CompanyMarketPlace extends StatefulWidget {
  @override
  State<CompanyMarketPlace> createState() => CompanyMarketPlaceState();
}

class CompanyMarketPlaceState extends State<CompanyMarketPlace> {
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
              CompanyMarketCard(),
              CompanyMarketCard(),
              CompanyMarketCard(),
              CompanyMarketCard()
            ]),
          ),
        ],
      ),
    );
  }
}
