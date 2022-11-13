import 'package:flutter/material.dart';

import 'package:trenwow/User/themain.dart/splasher/logOutSplash.dart';
import 'package:trenwow/company/home/companyscreen.dart';

import 'package:trenwow/company/dropdown/companyProf.dart';
import 'package:trenwow/company/dropdown/companySettings.dart';
import 'package:trenwow/company/home/companyForum.dart';
import 'package:trenwow/company/marketplace/companymarketPlace.dart';

import 'companyInstab.dart';
import 'companyMessages.dart';

class CompanyHome extends StatefulWidget {
  @override
  State<CompanyHome> createState() => CompanyHomeState();
}

class CompanyHomeState extends State<CompanyHome> {
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
                    FittedBox(child: Text('SOLD'))
                  ]),
              centerTitle: true,
              title: Text(
                'Trenwow',
                style: TextStyle(color: Colors.red),
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
                    if (value == 'profile')
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CompanyProf()));
                    if (value == 'Settings')
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CompanySettings()));
                    if (value == 'Logout')
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => LogOutSplash()));
                  },
                )
              ],
            ),
            body: TabBarView(children: [
              CompanyScreen(),
              CompanyMarketPlace(),
              CompanyForum()
            ]),
          ),
        ));
  }
}
