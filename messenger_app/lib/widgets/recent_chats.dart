import 'package:flutter/material.dart';

import '../models/message_model.dart';
import './chat_tile.dart';

class RecentChats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35.0),
            topRight: Radius.circular(35.0),
          ),
          child: ListView.builder(
            itemCount: chats.length,
            itemBuilder: (context, index) {
              final chat = chats[index];

              return ChatTile(
                text: chat.text,
                time: chat.time,
                sender: chat.sender,
                unRead: chat.unread,
              );
            },
          ),
        ),
      ),
    );
  }
}
