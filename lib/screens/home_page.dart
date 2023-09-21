import 'package:flutter/material.dart';
import 'package:project_sih/news/news_screen.dart';
import 'package:project_sih/screens/user_profile_page.dart';
import 'package:project_sih/screens/wool_type_page.dart';

import 'home_page_all.dart';
import 'news_education_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePageAll(),
    WoolTypePage(),
    HomeScreen(),
    UserProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(title: Text('Wool App',style: TextStyle(color: Colors.black,fontSize: 30),),backgroundColor: Colors.transparent,elevation: 0,automaticallyImplyLeading: false),
      body: _pages[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Color(0xFF7377FD), // Selected item color
        unselectedItemColor: Colors.grey, // 
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Know Your Wool Type',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school

),
            label: 'News and Education',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'User Profile',
          ),
        ],
      ),
    );
             }
}