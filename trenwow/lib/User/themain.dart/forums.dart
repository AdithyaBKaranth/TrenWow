import 'package:flutter/material.dart';

import 'forumholder.dart';

class Forums extends StatelessWidget {
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
              ForumHolder(),
              ForumHolder(),
              ForumHolder(),
              ForumHolder()
            ]),
          ),
        ],
      ),
    );
  }
}
