

import 'package:flutter/material.dart';
import 'package:nfc_project/view/personal_page/personal_page.dart';

class MyBottomNavigationPage extends StatefulWidget{

  @override
  State<MyBottomNavigationPage> createState() => _MyBottomNavigationPageState();
}

class _MyBottomNavigationPageState extends State<MyBottomNavigationPage> {

  late PageController _pageController;

  int _selectedIndex = 0 ;

  @override
  void initState() {
    _pageController = PageController(initialPage: _selectedIndex);
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.animateToPage(index, duration:Duration(milliseconds:500), curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (newPage){
          setState(() {
            _selectedIndex = newPage;
          });
        },
        children: [
          Container(),
          PersonalPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'personal'),
        ],


      ),
    );
  }
}