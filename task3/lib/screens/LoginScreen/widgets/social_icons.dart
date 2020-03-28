import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class SocialIcon {
  SocialIcon._();

  static const _kFontFam = 'SocialIcons';

  static const IconData google = IconData(0xf0d4, fontFamily: _kFontFam);
  static const IconData twitter = IconData(0xf304, fontFamily: _kFontFam);
  static const IconData facebook = IconData(0xf308, fontFamily: _kFontFam);
}

class SocialIcons extends StatelessWidget {
  final loginAuthentication;
  SocialIcons(this.loginAuthentication);

  Widget iconWidget(icon) {
    return GestureDetector(
      onTap: () {
        loginAuthentication('customer', 'password');
      },
          child: Icon(
        icon,
        color: Colors.amber,
        size: 60.0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Row(
        children: <Widget>[
    iconWidget(SocialIcon.facebook),
    iconWidget(SocialIcon.google),
    iconWidget(SocialIcon.twitter),
        ],
      );
  }
}
