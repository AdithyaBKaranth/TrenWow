import 'package:flutter/material.dart';
import 'package:trenwow/dropdown/prof.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Settings'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListTile(
            subtitle: Text(
              'status',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            leading: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Prof()));
                },
                child: CircleAvatar(
                  backgroundColor: Colors.purple,
                  child: Icon(
                    Icons.person,
                    size: 50,
                  ),
                  radius: 28,
                )),
            trailing: IconButton(
                color: Colors.white,
                onPressed: () {},
                icon: Icon(Icons.qr_code)),
            title: Text(
              'Name',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 9,
          ),
          ListTile(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            leading: Icon(
              Icons.key,
              color: Colors.black,
            ),
            title: Text(
              'Account',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            subtitle: Text(
              'Privacy,security,change number',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            tileColor: Colors.purple[300],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 30,
          ),
          ListTile(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            leading: Icon(
              Icons.message,
              color: Colors.black,
            ),
            title: Text(
              'Chats',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            subtitle: Text(
              'Theme,wallpapers,chat history',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            tileColor: Colors.purple[300],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 30,
          ),
          ListTile(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            leading: Icon(
              Icons.language,
              color: Colors.black,
            ),
            title: Text(
              'App language',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            subtitle: Text(
              'English',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            tileColor: Colors.purple[300],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 30,
          ),
          ListTile(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            leading: Icon(
              Icons.sell,
              color: Colors.black,
            ),
            title: Text(
              'Purchase history',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            subtitle: Text(
              'Purchase details',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            tileColor: Colors.purple[300],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 30,
          ),
          ListTile(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            leading: Icon(
              Icons.workspace_premium,
              color: Colors.black,
            ),
            title: Text(
              'Premium subscription',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            subtitle: Text(
              'Current subscriptions',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            tileColor: Colors.purple[300],
          ),
        ],
      ),
    );
  }
}