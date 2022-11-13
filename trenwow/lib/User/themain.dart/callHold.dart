import 'package:flutter/material.dart';

import 'dropdown/prof.dart';

class CallHold extends StatelessWidget {
  String texter1;
  CallHold(this.texter1);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: FittedBox(
        child: Row(
          children: [
            IconButton(
              icon: Icon(Icons.call),
              onPressed: () {},
            ),
          ],
        ),
      ),
      leading: GestureDetector(
          child: CircleAvatar(
            backgroundColor: Colors.purple,
          ),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Prof()));
          }),
      title: Text(
        texter1,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
      ),
      subtitle: Text('message texts'),
    );
  }
}
