import 'package:flutter/material.dart';

class PurchaseHis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recent dumps'),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 40,
          ),
          ListTile(
            leading: Text(
              'Success',
              style: TextStyle(fontSize: 20),
            ),
            title: Text(
              'Product',
              style: TextStyle(fontSize: 20),
            ),
            trailing: Text(
              'Date',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 40,
          ),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.alarm,
                color: Colors.yellow,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Shirt',
                style: TextStyle(fontSize: 20),
              ),
            ),
            trailing: Text(
              '12/08/2022',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 40,
          ),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.check,
                color: Colors.green,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Perfume',
                style: TextStyle(fontSize: 20),
              ),
            ),
            trailing: Text(
              '11/08/2022',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 40,
          ),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.check,
                color: Colors.green,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'furniture',
                style: TextStyle(fontSize: 20),
              ),
            ),
            trailing: Text(
              '10/08/2022',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 40,
          ),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.check,
                color: Colors.green,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'tubelight',
                style: TextStyle(fontSize: 20),
              ),
            ),
            trailing: Text(
              '09/08/2022',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 40,
          ),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.check,
                color: Colors.green,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Trolley',
                style: TextStyle(fontSize: 20),
              ),
            ),
            trailing: Text(
              '08/08/2022',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 40,
          ),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.check,
                color: Colors.green,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Bag',
                style: TextStyle(fontSize: 20),
              ),
            ),
            trailing: Text(
              '07/08/2022',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 50,
          ),
        ]),
      ),
    );
  }
}
