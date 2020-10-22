import 'package:flutter/material.dart';

AppBar topbar = AppBar(
  backgroundColor: Colors.grey[900],
  title: Image.asset(
    'assets/yt_logo.png',
    fit: BoxFit.cover,
    width: 100.0,
  ),
  actions: [
    Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: Icon(Icons.search),
    ),
    Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: Icon(Icons.videocam),
    ),
    Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: Icon(Icons.account_circle),
    ),
  ],
);

Color normalColor = Colors.white24;
Color selectedColor = Colors.white;

BottomAppBar bottombar = BottomAppBar(
  color: Colors.grey[900],
  child: Container(
    height: 55.0,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.home,
              color: selectedColor,
            ),
            Text(
              'Home',
              style: TextStyle(color: selectedColor, fontSize: 11),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.explore,
              color: normalColor,
            ),
            Text(
              'Explore',
              style: TextStyle(color: normalColor, fontSize: 11),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.subscriptions,
              color: normalColor,
            ),
            Text(
              'Subscriptions',
              style: TextStyle(color: normalColor, fontSize: 11),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.notifications,
              color: normalColor,
            ),
            Text(
              'Notifications',
              style: TextStyle(color: normalColor, fontSize: 11),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.folder,
              color: normalColor,
            ),
            Text(
              'Library',
              style: TextStyle(color: normalColor, fontSize: 11),
            ),
          ],
        )
      ],
    ),
  ),
);
