import 'package:flutter/material.dart';
import 'package:trenwow/company/dropdown/companyProf.dart';

import '../home/companyInsider.dart';

class CompanyMarketCard extends StatefulWidget {
  @override
  State<CompanyMarketCard> createState() => CompanyMarketCardState();
}

class CompanyMarketCardState extends State<CompanyMarketCard> {
  bool _liked = false;
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CompanyProf()));
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
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
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Colors.grey,
                  itemBuilder: (context) {
                    return contents
                        .map((e) => PopupMenuItem(
                            value: e,
                            child: Text(
                              e,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            )))
                        .toList();
                  },
                  onSelected: (value) {
                    if (value == 'Profile')
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CompanyProf()));
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
                    child: Image.asset('assets/images/perfume3.jpg'),
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
                              child: Image.asset('assets/images/shirt2.jpg')),
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
                              child: Image.asset('assets/images/bulb2.jpg')),
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
                              child: Image.asset('assets/images/laptop2.jpg'),
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
                            child: Image.asset('assets/images/sofa2.jpg'),
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
                  onPressed: () {
                    setState(() {
                      _liked = !_liked;
                    });
                  },
                  icon: _liked
                      ? Icon(
                          Icons.favorite_rounded,
                          color: Colors.redAccent[700],
                        )
                      : Icon(Icons.favorite_border),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CompanyInsider('name')));
                  },
                  icon: Icon(Icons.message),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => CompanyProf()));
                  },
                  icon: Icon(Icons.face_sharp),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
