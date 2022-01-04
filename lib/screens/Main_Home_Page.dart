import 'package:flutter/material.dart';
import 'package:flutter_food_demo/Const.dart';
import 'package:flutter_food_demo/screens/restaurant_Page.dart';

import 'Offers_Page.dart';
import 'Profile_Page.dart';
class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    Restaurant(),
    OffersPage(),
    Profile()

  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(

        currentIndex: _selectedIndex,

        showUnselectedLabels: false,
        selectedItemColor: AppColors.Primary_Color,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.restaurant

            ),
            label: 'Restaurant',

          ),
          BottomNavigationBarItem(
            icon: Icon(
             Icons.local_offer
            ),
            label: 'offers',

          ),
          BottomNavigationBarItem(
            icon: Icon(
             Icons.person_rounded
            ),
            label: 'PROFILE',

          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }

}


