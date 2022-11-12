import 'package:flutter/material.dart';

import '../contacts/contacter1.dart';
import 'messageHolder.dart';

class Messages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(
            children: [
              MsgHold("Contact 1"),
              MsgHold("Group 1"),
              MsgHold("Contact 2"),
              MsgHold("Group 2"),
              MsgHold("Contact 3"),
              MsgHold("Group 3"),
              MsgHold("Contact 4"),
              MsgHold("Group 4"),
              MsgHold("Contact 5"),
              MsgHold("Group 5"),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: FloatingActionButton(
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
