import 'package:flutter/material.dart';

import '../themain.dart/callHold.dart';

class Contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CallHold("contact 1"),
            CallHold("contact 2"),
            CallHold("contact 3"),
            CallHold("contact 4"),
            CallHold("contact 5"),
            CallHold("contact 6"),
            CallHold("contact 7"),
            CallHold("contact 8"),
            CallHold("contact 9"),
            CallHold("contact 10"),
            CallHold("contact 11"),
            CallHold("contact 12"),
            CallHold("contact 13"),
            CallHold("contact 14"),
            CallHold("contact 15"),
            CallHold("contact 16"),
            CallHold("contact 17"),
            CallHold("contact 18"),
            CallHold("contact 19"),
            CallHold("contact 20"),
            CallHold("contact 21"),
          ],
        ),
      ),
    );
  }
}
