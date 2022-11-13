import 'package:flutter/material.dart';
import 'package:trenwow/company/marketplace/companySell.dart';

class CompanyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Text(
              'Upload the products that you are willing to sell using the icon given below',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CompanySell()));
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.redAccent[700],
                    radius: 30,
                    child: Icon(
                      Icons.add,
                      color: Colors.black,
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
