import 'package:flutter/material.dart';
import 'package:trenwow/User/themain.dart/dropdown/phoneToDel.dart';

class Accounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Account',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 25,
          ),
          GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 10,
                ),
                Icon(
                  Icons.shield,
                  color: Colors.yellow[800],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 20,
                ),
                Text(
                  'Security notifications',
                  style: TextStyle(
                      color: Colors.purple[300],
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 25,
          ),
          GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 10,
                ),
                Icon(
                  Icons.phone,
                  color: Colors.green[600],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 20,
                ),
                Text(
                  'Change number',
                  style: TextStyle(
                      color: Colors.purple[300],
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 25,
          ),
          GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 10,
                ),
                Icon(
                  Icons.file_copy,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 20,
                ),
                Text(
                  'Request account info',
                  style: TextStyle(
                      color: Colors.purple[300],
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 25,
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text(
                        'Are you sure about deleting your account?\nthis will require you to enter your phone number and otp',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PhoneToDel()));
                            },
                            child: Text('yes',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold))),
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'No',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            )),
                      ],
                    );
                  });
            },
            child: Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 10,
                ),
                Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 20,
                ),
                Text(
                  'Delete my account',
                  style: TextStyle(
                      color: Colors.purple[300],
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
