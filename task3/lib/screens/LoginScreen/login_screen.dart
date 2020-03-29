import 'package:flutter/material.dart';
import 'package:task3/screens/AdminScreen/admin_screen.dart';

import './widgets/social_icons.dart';
import './widgets/input_textfield.dart';
import '../AdminScreen/admin_screen.dart';
import '../CustomerScreen/customer_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  _loginAuthentication(username, password) {
    if (username == 'admin' && password == 'admin') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => AdminScreen(),
        ),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => CustomerScreen(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    bool isLandscape = mediaQuery.orientation == Orientation.landscape,
        _checkboxValue = false,
        isSmallscreen = mediaQuery.size.width <= 1000;
    TextEditingController _usernameController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/assets/images/login_background.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Container(
                height: isLandscape && isSmallscreen
                    ? mediaQuery.size.height * 0.9
                    : mediaQuery.size.height * 0.6,
                width: isLandscape
                    ? mediaQuery.size.width * 0.50
                    : mediaQuery.size.width * 0.80,
                decoration: BoxDecoration(color: Colors.black54),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          top: isLandscape && isSmallscreen
                              ? 5.0
                              : mediaQuery.size.height * 0.05,
                          bottom: mediaQuery.size.height * 0.05,
                          left: 30.0,
                          right: 30.0,
                        ),
                        child: Container(
                          height: 50.0,
                          alignment: Alignment.topLeft,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('lib/assets/images/logo.png'),
                                fit: BoxFit.contain),
                          ),
                        ),
                      ),
                      InputTextField(
                        icon: Icons.person,
                        text: 'username',
                        keyboardType: TextInputType.emailAddress,
                        obscureText: false,
                        mediaQuery: mediaQuery,
                        isLandscape: isLandscape,
                        controller: _usernameController,
                      ),
                      InputTextField(
                        icon: Icons.vpn_key,
                        text: 'password',
                        keyboardType: TextInputType.datetime,
                        obscureText: true,
                        mediaQuery: mediaQuery,
                        isLandscape: isLandscape,
                        controller: _passwordController,
                      ),
                      Padding(
                        padding: isLandscape
                            ? EdgeInsets.symmetric(
                                vertical: isSmallscreen ? 0 : 10.0,
                                horizontal: mediaQuery.size.width * 0.1,
                              )
                            : EdgeInsets.all(10.0),
                        child: Row(
                          children: <Widget>[
                            Checkbox(
                              value: _checkboxValue,
                              onChanged: (value) {
                                setState(() {
                                  _checkboxValue = value;
                                });
                              },
                            ),
                            Text(
                              'Remember Me',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal:
                              isLandscape ? mediaQuery.size.width * 0.1 : 20.0,
                        ),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5.0),
                                ),
                              ),
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              color: Colors.amber,
                              onPressed: () {
                                _loginAuthentication(
                                  _usernameController.text,
                                  _passwordController.text,
                                );
                              }),
                        ),
                      ),
                      SizedBox(height: mediaQuery.size.height * 0.075),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          children: <Widget>[
                            RichText(
                              text: TextSpan(
                                text: 'Don\'t have an account? ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                                children: [
                                  TextSpan(
                                    text: 'Sign Up',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              'Forgot your password?',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: isLandscape && isSmallscreen
                  ? (mediaQuery.size.height - mediaQuery.padding.top) * 0.85 -
                      25
                  : (mediaQuery.size.height - mediaQuery.padding.top) * 0.8 -
                      25,
              right: isLandscape
                  ? mediaQuery.size.width * 0.25 + 25
                  : mediaQuery.size.width * 0.1 + 25,
              child: SocialIcons(_loginAuthentication),
            ),
          ],
        ),
      ),
    );
  }
}
