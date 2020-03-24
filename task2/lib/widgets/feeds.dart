import 'package:flutter/material.dart';

import './constants.dart';

class Feeds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ListView.builder(
              itemCount: feeds.length,
              itemBuilder: (context, index) => Container(),
            )
          ],
        ),
      ),
    );
  }
}
