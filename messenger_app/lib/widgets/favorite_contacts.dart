import 'package:flutter/material.dart';

import '../models/message_model.dart';
import '../screens/chat_screen.dart';

class FavoriteContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Favorite Contacts',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.more_horiz),
                  iconSize: 30.0,
                  color: Colors.blueGrey,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            height: 110,
            child: ListView.builder(
                padding: EdgeInsets.only(left: 10.0),
                scrollDirection: Axis.horizontal,
                itemCount: favorites.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ChatScreen(
                          user: favorites[index],
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        children: <Widget>[
                          CircleAvatar(
                            radius: MediaQuery.of(context).size.width * 0.09,
                            backgroundImage:
                                AssetImage(favorites[index].imageUrl),
                          ),
                          SizedBox(height: 6.0),
                          Container(
                            width: 75.0,
                            child: Text(
                              favorites[index].name,
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                              ),
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.center,
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
