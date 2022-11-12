import 'package:flutter/material.dart';

import '../contacts/contacter1.dart';
import 'messageHolder.dart';

class Messages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(
            children: [
              MsgHold("Contact 1"),
              MsgHold("Contact 2"),
              MsgHold("Contact 3"),
              MsgHold("Contact 4"),
              MsgHold("Contact 5"),
              MsgHold("Contact 6"),
              MsgHold("Contact 7"),
              MsgHold("Contact 8"),
              MsgHold("Contact 9"),
              MsgHold("Contact 10"),
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
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Contacter1()));
                })),
          ),
        ),
      ]),
    );
  }
}
