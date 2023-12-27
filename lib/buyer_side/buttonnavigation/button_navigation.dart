// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:grocery/buyer_side/account/my_account.dart';
import 'package:grocery/buyer_side/basket/basket.dart';
import 'package:grocery/buyer_side/my_orders/my_order.dart';
import 'package:grocery/buyer_side/home/home_page.dart';
import 'package:grocery/color/color.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';

class Button_navigation extends StatefulWidget {
  const Button_navigation({super.key});
  @override
  State<Button_navigation> createState() => _Button_navigationState();
}

class _Button_navigationState extends State<Button_navigation> {
  int _currentPageIndex = 0; // Track the current page index
  final List<Widget> _pages = [
    HomePage(),
    Basket(),
    MyOrder(),
    Profile(),

    // Profile(),
  ];
  ColorSelect colorObj = ColorSelect();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentPageIndex],
      bottomNavigationBar: MotionTabBar(
        initialSelectedTab: "Home",
        useSafeArea: true,
        labels: [
          "Home",
          "Basket",
          "My Order",
          "Profile",
        ],
        icons: const [
          Icons.home,
          Icons.shopping_basket,
          Icons.history_outlined,

          Icons.person,
          //  Icons.search,
        ],
        tabSize: 50,
        tabBarHeight: 55,
        textStyle: const TextStyle(
          fontSize: 12,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        tabIconColor: colorObj.pruple,
        tabIconSize: 28.0,
        tabIconSelectedSize: 26.0,
        tabSelectedColor: colorObj.pruple,
        tabIconSelectedColor: Colors.white,
        tabBarColor: const Color(0xFFAFAFAF),
        onTabItemSelected: (index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
      ),
    );
  }
}
