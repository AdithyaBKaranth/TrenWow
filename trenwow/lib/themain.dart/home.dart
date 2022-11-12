import 'package:flutter/material.dart';

import 'package:trenwow/splasher/logOutSplash.dart';

import '../contacts/contacts.dart';

import '../dropdown/prof.dart';
import '../dropdown/settings.dart';
import '../marketplace/marketPlace.dart';
import 'instab.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> contents = [
    'profile',
    'New broadcast',
    'Favourites',
    'Payments',
    'Settings',
    'Logout'
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: MaterialApp(
          theme: ThemeData.dark(),
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              backgroundColor: Colors.black,
              bottom: TabBar(
                  labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                  padding: const EdgeInsets.all(3),
                  indicatorColor: Colors.redAccent[700],
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: [
                    FittedBox(child: Text('HOME')),
                    FittedBox(child: Text('MARKETPLACE')),
                    FittedBox(child: Text('CALLS'))
                  ]),
              centerTitle: true,
              title: Text('Trenwow'),
              leading: Image.asset(
                'assets/images/trenwow.png',
              ),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                    )),
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
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )))
                        .toList();
                  },
                  onSelected: (value) {
                    if (value == 'profile')
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Prof()));
                    if (value == 'Settings')
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Settings()));
                    if (value == 'Logout')
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => LogOutSplash()));
                  },
                )
              ],
            ),
            body: TabBarView(children: [Instab(), MarketPlace(), Contacts()]),
          ),
        ));
  }
}
