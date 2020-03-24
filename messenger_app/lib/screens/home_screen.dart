import 'package:flutter/material.dart';

import '../widgets/category_selector.dart';
import '../widgets/favorite_contacts.dart';
import '../widgets/recent_chats.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    bool isLandScape = MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          iconSize: 30.0,
          color: Colors.white,
          onPressed: () {},
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              iconSize: 30.0,
              color: Colors.white,
              onPressed: () {}),
        ],
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: <Widget>[
          CategorySelector(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                children: <Widget>[
                  isLandScape ? Container() : FavoriteContacts(),
                  RecentChats(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
