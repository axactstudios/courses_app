import 'package:coursesapp/Classes/constants.dart';
import 'package:coursesapp/Screens/Account.dart';
import 'package:coursesapp/Screens/FeaturedPage.dart';
import 'package:coursesapp/Screens/MyCourses.dart';
import 'package:coursesapp/Screens/Search.dart';
import 'package:coursesapp/Screens/Wishlist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> _widgetList = [
    Featured(),
    Search(),
    MyCourses(),
    Wishlist(),
    MyAccount()
  ];

  List<Widget> _buildScreens() {
    return [Featured(), Search(), MyCourses(), Wishlist(), MyAccount()];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.star_border),
        title: ("Featured"),
        activeColor: kPrimaryColor,
        inactiveColor: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.search),
        title: ("Search"),
        activeColor: kPrimaryColor,
        inactiveColor: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.play_circle_outline),
        title: ("My Courses"),
        activeColor: kPrimaryColor,
        inactiveColor: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.favorite_border),
        title: ("Wishlist"),
        activeColor: kPrimaryColor,
        inactiveColor: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.account_circle),
        title: ("My Account"),
        activeColor: kPrimaryColor,
        inactiveColor: CupertinoColors.systemGrey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears.
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: false,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style6, // Choose the nav bar style with this property.
    );
  }
}
