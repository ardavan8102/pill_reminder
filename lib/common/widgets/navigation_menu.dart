import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:pill_reminder/screens/home.dart';
import 'package:pill_reminder/screens/pills.dart';
import 'package:pill_reminder/screens/settings.dart';
import 'package:pill_reminder/utils/constants/colors.dart';
import 'package:pill_reminder/utils/constants/image_strings.dart';
import 'package:pill_reminder/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  @override
  Widget build(BuildContext context) {

    final dark = myHelperFunctions.isDarkMode(context);

    PageController _controller = new PageController();

    int _selectedTab = 0;

    List<Widget> _screens = [
      HomePage(),
      PillsPage(),
      SettingsPage(),
    ];

    void _onTabChange(int index) {
      _controller.jumpToPage(index);
    }

    void _onTabSelect(int selectedIndex) {
      _selectedTab = selectedIndex;
    }

    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          index: _selectedTab,
          backgroundColor: dark ? myColors.dark : myColors.primaryBackground,
          color: dark ? myColors.darkerGrey : myColors.lightWhiteBlue,
          animationDuration: Duration(milliseconds: 400),
          onTap: (index) => _onTabChange(index),
          items: [
            Image.asset(
              Images.homeIcon,
              height: 30,
              width: 30,
            ),

            Image.asset(
              Images.pillsIcon,
              height: 30,
              width: 30,
            ),

            Image.asset(
              Images.settingsIcon,
              height: 35,
              width: 35,
            ),
            
          ],
        ),
      
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          children: _screens,
          controller: _controller,
          onPageChanged: _onTabSelect,
        ),
      ),
    );
  }
}
