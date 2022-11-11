import 'package:flutter/material.dart';

class Sign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 6,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('assets/images/trenwow.png'),
              ),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'Sign up as',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.lightGreenAccent[400]),
              ),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 45,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton.icon(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.orange)),
              label: Text(
                'Company',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onPressed: () {
                //Navigator.of(context).pushReplacement(
                //  MaterialPageRoute(builder: (context) => Email()));
              },
              icon: Icon(
                Icons.email,
                color: Colors.black,
              ),
            ),
            Text(
              'or',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            ElevatedButton.icon(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.orange)),
                label: Text(
                  'User',
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {},
                icon: Icon(
                  Icons.phone_android,
                  color: Colors.black,
                )),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                child: Text(
              '-----------------------------',
              style: TextStyle(
                color: Colors.white,
              ),
            )),
            Text(
              '     OR     ',
              style:
                  TextStyle(fontSize: 20, color: Colors.lightGreenAccent[400]),
            ),
            Text(
              '-----------------------------',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already have an account?',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            //Text(' '),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Sign in',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.blue,
                      fontSize: 20),
                ))
          ],
        )
      ]),
    );
  }
}
