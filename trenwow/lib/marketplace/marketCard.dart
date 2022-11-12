import 'package:flutter/material.dart';
import '../dropdown/prof.dart';
import '../message/insider.dart';

class MarketCard extends StatelessWidget {
  List<String> contents = [
    'Profile',
    'Add to favourites',
    'Report',
    'Not interested X'
  ];
  Widget Texter(String text, BuildContext context) {
    return TextButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Text(
                    'Thank you for letting us know :)',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Ok'))
                  ],
                );
              }).then((value) => Navigator.pop(context));
        },
        child: Text(text));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.black,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Prof()));
                    },
                    child: CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                  ),
                ),
                Text(
                  'name',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  width: 220,
                ),
                PopupMenuButton(
                  color: Colors.pink[100],
                  itemBuilder: (context) {
                    return contents
                        .map((e) => PopupMenuItem(
                            value: e,
                            child: Text(
                              e,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )))
                        .toList();
                  },
                  onSelected: (value) {
                    if (value == 'Profile')
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Prof()));
                    if (value == 'Report')
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      showModalBottomSheet(
                                          context: context,
                                          builder: (context) {
                                            return Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Text(
                                                  'Why are you reporting this post?',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Texter('I find it offensive',
                                                    context),
                                                Texter(
                                                    "It's misleading", context),
                                                Texter("It's spam", context),
                                                Texter(
                                                    "It's scam or it's misleading",
                                                    context),
                                                Texter('Abnormal activities',
                                                    context)
                                              ],
                                            );
                                          }).then((value) => Navigator.of(
                                              context)
                                          .pop());
                                    },
                                    child: Text('Yes')),
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text('No')),
                              ],
                              title: Text(
                                  'Are you sure you want to report this post?'),
                            );
                          });
                    if (value == 'Not interested X')
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text(
                                  'We will try not to show you these posts again :)'),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text('Ok'))
                              ],
                            );
                          });
                  },
                )
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                        'https://tse4.mm.bing.net/th?id=OIP.JVRc567bcu6Mm6QbQmY3RAHaHa&pid=Api&P=0'),
                  ),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  height: MediaQuery.of(context).size.height / 5.5,
                  width: MediaQuery.of(context).size.width / 2,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 50,
                        ),
                        Container(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                  'https://tse2.mm.bing.net/th?id=OIP.Oj1sOgQ5RvHcxD8ITG80nwHaKL&pid=Api&P=0')),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          height: MediaQuery.of(context).size.height / 12,
                          width: MediaQuery.of(context).size.width / 5,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 50,
                        ),
                        Container(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                  'https://tse2.mm.bing.net/th?id=OIP.OF74Z3s-9kADfrm0pU043AHaEa&pid=Api&P=0')),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          height: MediaQuery.of(context).size.height / 12,
                          width: MediaQuery.of(context).size.width / 5,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          child: ClipRRect(
                              child: Image.network(
                                  'https://tse2.mm.bing.net/th?id=OIP.-8MM93iJwSOEIq4C-OE6tQHaE8&pid=Api&P=0'),
                              borderRadius: BorderRadius.circular(20)),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          height: MediaQuery.of(context).size.height / 12,
                          width: MediaQuery.of(context).size.width / 5,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 50,
                        ),
                        Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                                'https://tse1.mm.bing.net/th?id=OIP.Mvy14xR2zlEQSQ-_wWhf3wHaE7&pid=Api&P=0'),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          height: MediaQuery.of(context).size.height / 12,
                          width: MediaQuery.of(context).size.width / 5,
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
            Text(
              'Descripton of the product',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_border),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Insider('name')));
                  },
                  icon: Icon(Icons.message),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Prof()));
                  },
                  icon: Icon(Icons.face_sharp),
                ),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Buy'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Insider('name')));
                  },
                  child: Text('Message'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
