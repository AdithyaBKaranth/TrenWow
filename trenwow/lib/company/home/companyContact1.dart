import 'package:flutter/material.dart';

import 'companyMggHol.dart';

class CompanyContacter1 extends StatelessWidget {
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
            CompanyMsgHold("contact 1"),
            CompanyMsgHold("contact 2"),
            CompanyMsgHold("contact 3"),
            CompanyMsgHold("contact 4"),
            CompanyMsgHold("contact 5"),
            CompanyMsgHold("contact 6"),
            CompanyMsgHold("contact 7"),
            CompanyMsgHold("contact 8"),
            CompanyMsgHold("contact 9"),
            CompanyMsgHold("contact 10"),
            CompanyMsgHold("contact 11"),
            CompanyMsgHold("contact 12"),
            CompanyMsgHold("contact 13"),
            CompanyMsgHold("contact 14"),
            CompanyMsgHold("contact 15"),
            CompanyMsgHold("contact 16"),
            CompanyMsgHold("contact 17"),
            CompanyMsgHold("contact 18"),
            CompanyMsgHold("contact 19"),
            CompanyMsgHold("contact 20"),
            CompanyMsgHold("contact 21"),
          ],
        ),
      ),
    );
  }
}
