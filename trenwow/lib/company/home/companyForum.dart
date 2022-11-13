import 'package:flutter/material.dart';
import 'package:trenwow/company/marketplace/companySell.dart';

import 'companyForumhold.dart';

class CompanyForum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(addRepaintBoundaries: true, children: [
              SizedBox(
                height: 10,
              ),
              CompanyForumHolder(),
              CompanyForumHolder(),
            ]),
          ),
        ],
      ),
    );
  }
}
