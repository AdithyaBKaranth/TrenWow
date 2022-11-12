import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
    'p'.tr,
    'NB'.tr,
    'F'.tr,
    'PMT'.tr,
    'S'.tr,
    'LO'.tr,
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
                    FittedBox(child: Text('H'.tr)),
                    FittedBox(child: Text('M'.tr)),
                    FittedBox(child: Text('c'.tr))
                  ]),
              centerTitle: true,
              title: Text(
                'Trenwow',
                style: TextStyle(color: Colors.redAccent[700]),
              ),
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
                    if (value == 'p'.tr)
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Prof()));
                    if (value == 'S'.tr)
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Settings()));
                    if (value == 'LO'.tr)
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
