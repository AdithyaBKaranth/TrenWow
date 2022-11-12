import 'package:flutter/material.dart';

import 'newgrouphold.dart';

class NewGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Select contacts to be included"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            NGH("contact 1"),
            NGH("contact 2"),
            NGH("contact 3"),
            NGH("contact 4"),
            NGH("contact 5"),
            NGH("contact 6"),
            NGH("contact 7"),
            NGH("contact 8"),
            NGH("contact 9"),
            NGH("contact 10"),
            NGH("contact 11"),
            NGH("contact 12"),
            NGH("contact 13"),
            NGH("contact 14"),
            NGH("contact 15"),
            NGH("contact 16"),
            NGH("contact 17"),
            NGH("contact 18"),
            NGH("contact 19"),
            NGH("contact 20"),
            NGH("contact 21"),
          ],
        ),
      ),
    );
  }
}
