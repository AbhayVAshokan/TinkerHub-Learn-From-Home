import 'package:flutter/material.dart';

import '../models/user_model.dart';
import '../widgets/composer.dart';
import '../widgets/chat_messages.dart';

class ChatScreen extends StatefulWidget {
  final User user;

  ChatScreen({@required this.user});
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 30.0,
              color: Colors.white,
            ),
            onPressed: () {}),
        title: Text(
          widget.user.name,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.more_horiz,
                color: Colors.white,
                size: 30.0,
              ),
              onPressed: null)
        ],
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Column(children: <Widget>[
          ChatMessages(),
          Composer(),
        ],),
      ),
    );
  }
}
