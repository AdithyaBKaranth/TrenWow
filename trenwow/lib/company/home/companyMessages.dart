import 'package:flutter/material.dart';
import 'package:trenwow/company/home/companyContact1.dart';

import 'companyMggHol.dart';

class CompanyMessages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(
            children: [
              CompanyMsgHold("Contact 1"),
              CompanyMsgHold("Contact 2"),
              CompanyMsgHold("Contact 3"),
              CompanyMsgHold("Contact 4"),
              CompanyMsgHold("Contact 5"),
              CompanyMsgHold("Contact 6"),
              CompanyMsgHold("Contact 7"),
              CompanyMsgHold("Contact 8"),
              CompanyMsgHold("Contact 9"),
              CompanyMsgHold("Contact 10"),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: FloatingActionButton(
                backgroundColor: Colors.redAccent[700],
                child: Icon(Icons.message),
                onPressed: (() {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => CompanyContacter1()));
                })),
          ),
        ),
      ]),
    );
  }
}
