import 'package:flutter/material.dart';

import '../dropdown/prof.dart';
import '../message/insider.dart';

class NGH extends StatelessWidget {
  String text;
  NGH(this.text);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Insider(text)));
      },
      child: ListTile(
        leading: GestureDetector(
            child: CircleAvatar(
              backgroundColor: Colors.purple,
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Prof()));
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
