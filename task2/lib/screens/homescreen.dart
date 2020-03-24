import 'package:flutter/material.dart';

import '../widgets/top_bar.dart';
import '../widgets/feeds.dart';
import '../widgets/constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    final List<String> _dropdownListItems = [
      'Overall',
      'Recent',
      'Your Location',
      'This Month'
    ];
    var _selectedValue = 'Overall';

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          SizedBox(height: mediaQuery.padding.top),
          Padding(
            padding: EdgeInsets.only(
              left: 15.0,
              right: 15.0,
              top: 10.0,
              bottom: 20.0,
            ),
            child: TopBar(),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 50.0),
              child: DropdownButton<String>(
                value: _selectedValue,
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: emphasisColor,
                  size: 30.0,
                ),
                items: _dropdownListItems.map((String choice) {
                  return DropdownMenuItem<String>(
                    value: choice,
                    child: Text(
                      choice,
                      style: Theme.of(context).primaryTextTheme.headline3,
                    ),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedValue = value;
                  });
                },
              ),
            ),
          ),
          Feeds(),
        ],
      ),
    );
  }
}
