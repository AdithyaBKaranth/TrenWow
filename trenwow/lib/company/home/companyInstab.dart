import 'package:flutter/material.dart';

import 'companyForum.dart';
import 'companyMessages.dart';

class CompanyInstab extends StatefulWidget {
  @override
  State<CompanyInstab> createState() => CompanyInstabState();
}

class CompanyInstabState extends State<CompanyInstab> {
  late List<Map<String, dynamic>> _pages;
  int _selectedPage = 0;
  @override
  void initState() {
    _pages = [
      {'page': CompanyForum(), 'title': 'Forums'},
      {'page': CompanyMessages(), 'title': 'Messages'}
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 1,
        // title: Text(_pages[_selectedPage]['title']),
      ),
      body: _pages[_selectedPage]['page'],
      bottomNavigationBar: BottomNavigationBar(
        enableFeedback: true,
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.redAccent[700],
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedPage,
        onTap: _selectPage,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.forum), label: 'Forum'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Messages')
        ],
      ),
    );
  }
}
