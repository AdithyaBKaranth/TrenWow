import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Chat',
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
                  Icons.dark_mode,
                  color: Colors.yellow[800],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 20,
                ),
                Text(
                  'Theme (dark by default)',
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
                  Icons.wallpaper,
                  color: Colors.green[600],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 20,
                ),
                Text(
                  'wallpaper',
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
                  Icons.backup,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 20,
                ),
                Text(
                  'chat backup',
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
                  Icons.history,
                  color: Colors.red,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 20,
                ),
                Text(
                  'Chat history',
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
