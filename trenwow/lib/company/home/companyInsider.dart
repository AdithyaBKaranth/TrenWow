import 'package:flutter/material.dart';
import 'package:trenwow/company/dropdown/companyProf.dart';

class CompanyInsider extends StatelessWidget {
  String texter;
  CompanyInsider(this.texter);
  List<String> contents = [
    'View contact',
    'Media,links and docs',
    'Mute notifications',
    'Clear chat',
    'Report',
    'Block'
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
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.black12, actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => CompanyProf()));
            },
            child: CircleAvatar(
              backgroundColor: Colors.purple,
              child: Icon(Icons.person),
            ),
          ),
          Center(
            child: Text(
              texter,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 3.2,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.call,
            ),
          ),
          SizedBox(
            width: 7,
          ),
          PopupMenuButton(
            color: Colors.grey,
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
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Why are you reporting this post?',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Texter('They are abusive', context),
                                          Texter(
                                              'I find them offensive', context),
                                          Texter(
                                              "They are misleading", context),
                                          Texter("They spam", context),
                                          Texter("They are scam or misleading",
                                              context),
                                          Texter('Abnormal activities', context)
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
                            'Are you sure you want to report this contact?'),
                      );
                    });
              if (value == 'Block')
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Block this contact?'),
                        actions: [
                          TextButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        content: Text(
                                            'You will no longer receive calls and messages from this contact'),
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
                              child: Text('Ok')),
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('cancel'))
                        ],
                      );
                    });
              if (value == 'View contact')
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CompanyProf()));
            },
          )
        ]),
        body: Stack(children: [
          SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Image.asset(
              height: 725,
              width: 500,
              isAntiAlias: true,
              scale: 100,
              'assets/images/backer.jpg',
              fit: BoxFit.fill,
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black12,
                  border: Border.all(color: Colors.black38),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    child: IconButton(
                        onPressed: () {}, icon: Icon(Icons.emoji_emotions)),
                  ),
                  SizedBox(width: 180, child: TextField()),
                  IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                            backgroundColor: Colors.purple[300],
                            shape: RoundedRectangleBorder(),
                            isDismissible: true,
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                height: 200,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(
                                      Icons.file_copy,
                                    ),
                                    Icon(
                                      Icons.image,
                                    ),
                                    Icon(Icons.video_file),
                                    Icon(Icons.audio_file)
                                  ],
                                ),
                              );
                            });
                      },
                      icon: Icon(Icons.attach_file)),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.photo_camera_sharp)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.mic))
                ],
              ),
            ),
          ),
        ]));
  }
}
