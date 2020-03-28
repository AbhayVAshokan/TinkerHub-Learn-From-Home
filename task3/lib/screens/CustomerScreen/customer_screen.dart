import 'package:flutter/material.dart';

import './widgets/top_bar.dart';
import './widgets/mobile_card.dart';
import './models/mobile.dart';

class CustomerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);

    AppBar _appBar = AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: Colors.white,
          size: 30.0,
        ),
        onPressed: () {},
      ),
      title: Container(
        height: 40,
        child: Image.asset(
          'lib/assets/images/logo.png',
          fit: BoxFit.contain,
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.favorite,
            color: Colors.white,
            size: 30.0,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            Icons.add_shopping_cart,
            color: Colors.white,
            size: 30.0,
          ),
          onPressed: () {},
        ),
      ],
      elevation: 0.0,
    );

    return Scaffold(
      body: SafeArea(
        child: Scaffold(
          appBar: _appBar,
          body: Column(
            children: <Widget>[
              TopBar(mediaQuery),
              Expanded(
                child: ListView.builder(
                    itemCount: mobiles.length,
                    itemBuilder: (context, index) {
                      return MobileCard(mobiles[index]);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
