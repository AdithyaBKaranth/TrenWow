import 'package:flutter/material.dart';

import 'dropdown/prof.dart';
import 'message/insider.dart';

class ForumHolder extends StatefulWidget {
  @override
  State<ForumHolder> createState() => _ForumHolderState();
}

class _ForumHolderState extends State<ForumHolder> {
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
    return Card(
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
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Text(
                                                    'Why are you reporting this post?',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Texter('I find it offensive',
                                                      context),
                                                  Texter("It's misleading",
                                                      context),
                                                  Texter("It's spam", context),
                                                  Texter(
                                                      "It's scam or it's misleading",
                                                      context),
                                                  Texter('Abnormal activities',
                                                      context)
                                                ],
                                              );
                                            })
                                        .then((value) =>
                                            Navigator.of(context).pop());
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
                  child: Image.asset('assets/images/perfume1.jpg',
                      fit: BoxFit.fill),
                ),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20)),
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
                          child: Image.asset('assets/images/shirt1.jpg'),
                        ),
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
                          child: Image.asset('assets/images/bulb1.jpg'),
                        ),
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
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset('assets/images/laptop1.jpg'),
                        ),
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
                          child: Image.asset('assets/images/sofa1.jpg'),
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
                      builder: (context) => Insider('contact 1')));
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
            ],
          )
        ],
      ),
    );
  }
}
