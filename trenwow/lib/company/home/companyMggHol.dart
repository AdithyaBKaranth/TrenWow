import 'package:flutter/material.dart';
import 'package:trenwow/company/dropdown/companyProf.dart';

import 'companyInsider.dart';

class CompanyMsgHold extends StatelessWidget {
  String text;
  CompanyMsgHold(this.text);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => CompanyInsider(text)));
      },
      child: ListTile(
        leading: GestureDetector(
            child: CircleAvatar(
              child: Icon(
                Icons.person,
                color: Colors.black,
              ),
              backgroundColor: Colors.purple,
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => CompanyProf()));
            }),
        title: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
        ),
        subtitle: Text('message texts'),
      ),
    );
  }
}
