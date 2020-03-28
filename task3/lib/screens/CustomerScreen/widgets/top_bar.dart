import 'package:flutter/material.dart';

class TopBar extends StatefulWidget {
  final mediaQuery;

  TopBar(this.mediaQuery);

  @override
  _TopBarState createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    Widget _topBarItem(text, icon) {
      return Container(
        width: mediaQuery.size.width * 0.33,
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  icon,
                  size: 25.0,
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  text,
                  style: Theme.of(context).textTheme.subtitle2.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Column(
      children: <Widget>[
        Container(
          color: Theme.of(context).primaryColor,
          padding: EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(5.0),
              ),
            ),
            height: 50.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                  color: Colors.grey,
                  iconSize: 30.0,
                ),
                Container(
                  width: widget.mediaQuery.size.width * 0.82,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Fire away your searches',
                      hintStyle: Theme.of(context).textTheme.subtitle1.copyWith(
                            color: Color(0xFF575757),
                            letterSpacing: 0.75,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    style: Theme.of(context).textTheme.subtitle1.copyWith(
                          color: Color(0xFF3B3B3B),
                          letterSpacing: 0.75,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _topBarItem('Compare', Icons.exit_to_app),
            _topBarItem('Sort', Icons.sort),
            _topBarItem('Filter', Icons.filter_list),
          ],
        ),
        Container(
          height: 40.0,
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Over 3,000 Results',
                style: Theme.of(context).textTheme.subtitle2.copyWith(
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      letterSpacing: 0.75,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
