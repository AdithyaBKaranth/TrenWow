import 'package:flutter/material.dart';

import '../message/messageHolder.dart';
import '../callHold.dart';

class Contacter1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Select contact"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MsgHold("contact 1"),
            MsgHold("contact 2"),
            MsgHold("contact 3"),
            MsgHold("contact 4"),
            MsgHold("contact 5"),
            MsgHold("contact 6"),
            MsgHold("contact 7"),
            MsgHold("contact 8"),
            MsgHold("contact 9"),
            MsgHold("contact 10"),
            MsgHold("contact 11"),
            MsgHold("contact 12"),
            MsgHold("contact 13"),
            MsgHold("contact 14"),
            MsgHold("contact 15"),
            MsgHold("contact 16"),
            MsgHold("contact 17"),
            MsgHold("contact 18"),
            MsgHold("contact 19"),
            MsgHold("contact 20"),
            MsgHold("contact 21"),
          ],
        ),
      ),
    );
  }
}
