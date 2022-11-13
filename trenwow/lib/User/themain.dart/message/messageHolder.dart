import 'package:flutter/material.dart';

import '../dropdown/prof.dart';
import 'insider.dart';

class MsgHold extends StatelessWidget {
  String text;
  MsgHold(this.text);
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
              child: Icon(
                Icons.person,
                color: Colors.black,
              ),
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
