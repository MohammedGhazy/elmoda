import 'package:flutter/material.dart';
import 'package:task/pages/HomePage.dart';
import 'package:task/pages/brands.dart';
import 'package:task/pages/sections.dart';
import 'package:task/pages/slty.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int itemIndex = 0;

  final options = [
    HomePage(),
    Brands(),
    Sections(),
    //Cart(),
  ];

  void incrementIndex(index) {
    setState(() {
      itemIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: options[itemIndex],
        bottomNavigationBar: Directionality(
          textDirection: TextDirection.rtl,
          child: BottomNavigationBar(
            selectedItemColor: Colors.pink[200],
            unselectedItemColor: Colors.black,
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            currentIndex: itemIndex,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                title: Text(
                  'متجر الموضه',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                title: Text(
                  'ماركات',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.menu),
                title: Text(
                  'الأقسام',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              //BottomNavigationBarItem(
              //icon: Icon(Icons.delete_sweep),
              //title: Text('سلتي',style: TextStyle(
              //fontWeight: FontWeight.bold,
              //),),
              //)
            ],
            onTap: (index) {
              incrementIndex(index);
            },
          ),
        ),
      ),
    );
  }
}
