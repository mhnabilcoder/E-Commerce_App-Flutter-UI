
import 'package:ecommerce/ui/accountpage/accountpage.dart';
import 'package:ecommerce/ui/cartpage/cartpage.dart';
import 'package:ecommerce/ui/homepage/homePage.dart';
import 'package:ecommerce/ui/messagepage/messagepage.dart';
import 'package:flutter/material.dart';

class mainScreen extends StatefulWidget {
  const mainScreen({Key? key}) : super(key: key);

  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    MessageScreen(),
    CartScreen(),
    AccountScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color: Colors.black87,),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline,color: Colors.black87,),label: "Message"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined,color: Colors.black87,),label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle,color: Colors.black87,),label: "Account"),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
