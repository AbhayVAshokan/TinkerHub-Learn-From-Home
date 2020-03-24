import 'package:flutter/material.dart';

import '../screens/chat_screen.dart';
import '../models/user_model.dart';

class ChatTile extends StatelessWidget {
  final String text;
  final String time;
  final User sender;
  final bool unRead;

  ChatTile({
    @required this.text,
    @required this.time,
    @required this.unRead,
    @required this.sender,
  });

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    bool isLandscape = mediaQuery.orientation == Orientation.landscape;

    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => ChatScreen(user: sender),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: unRead ? Color(0xFFFFEFEE) : Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(35.0),
            bottomRight: Radius.circular(35.0),
          ),
        ),
        margin: EdgeInsets.only(top: 5.0, bottom: 5.0, right: 10.0),
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage(sender.imageUrl),
                  radius: isLandscape
                      ? mediaQuery.size.height * 0.09
                      : mediaQuery.size.width * 0.09,
                ),
                SizedBox(width: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      sender.name,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Container(
                      width: isLandscape
                          ? mediaQuery.size.width * 0.70
                          : mediaQuery.size.width * 0.45,
                      child: Text(
                        text,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Text(
                  time,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5.0,
                ),
                unRead
                    ? Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 6.0, vertical: 3.0),
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        ),
                        child: Text(
                          'NEW',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      )
                    : Text(''),
              ],
            )
          ],
        ),
      ),
    );
  }
}
