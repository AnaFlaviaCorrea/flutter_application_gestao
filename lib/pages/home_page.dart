import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_gestao/models/users.dart';
import 'package:flutter_application_gestao/pages/expenses_create_page.dart';
import 'package:flutter_application_gestao/pages/expenses_views_page.dart';
import 'package:flutter_application_gestao/pages/login_page.dart';

class HomePage extends StatefulWidget {
  final UserModel user;

  HomePage({required this.user});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  List<Widget> _pageOptions() => [ExpensesCreate(), ExpensesView()];

  @override
  Widget build(BuildContext context) {
    final List<Widget> pageOptions = _pageOptions();

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: pageOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Dashboard',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
            if (index == 3) {
              FirebaseAuth.instance.signOut();
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            }
          });
        },
      ),
    );
  }
}