import 'package:bangjeff/pages/main_pages/artikel_page.dart';
import 'package:bangjeff/pages/main_pages/dashboardPage.dart';
import 'package:bangjeff/pages/main_pages/profile_page.dart';
import 'package:bangjeff/pages/main_pages/top_up_page.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          DashboardPage(),
          const TopUpPage(),
          const Artikel(),
          const ProfilePage(),
        ],
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red[900],
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.gamepad),
            label: 'Top Up',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_sharp),
            label: 'Artikel',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
