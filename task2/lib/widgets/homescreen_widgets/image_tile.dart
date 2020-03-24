import 'package:flutter/material.dart';

import 'package:task2/models/image_card_model.dart';
import '../constants.dart';

class ImageTile extends StatelessWidget {
  final ImageCardModel imageCardData;

  ImageTile(this.imageCardData);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    bool isLandscape = mediaQuery.orientation == Orientation.landscape;

    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: emphasisColor,
          blurRadius: 10,
          offset: Offset(0, 20.0),
        ),
      ]),
      width: double.infinity,
      height: isLandscape
          ? (mediaQuery.size.width - 300) / 1.6
          : (mediaQuery.size.width - 60) / 1.6,
      margin: EdgeInsets.only(
        bottom: 20.0,
        left: isLandscape ? 150 : 30.0,
        right: isLandscape ? 150 : 30.0,
      ),
      child: Card(
        margin: EdgeInsets.all(0),
        elevation: 10.0,
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: isLandscape
          ? (mediaQuery.size.width - 300) / 1.6
          : (mediaQuery.size.width - 60) / 1.6,
              child: Image.asset(
                imageCardData.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(25),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(2.0),
                    margin: EdgeInsets.only(
                      right: 20,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        imageCardData.profilePic,
                      ),
                      radius: 35.0,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        imageCardData.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.0,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            color: Colors.white,
                            size: 20.0,
                          ),
                          Text(
                            imageCardData.location,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.0),
                      Container(
                        width: mediaQuery.size.width * 0.40,
                        child: Text(
                          imageCardData.shortDescription,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 0.75),
                            fontSize: 17.0,
                            letterSpacing: 0.75,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.image,
                    color: Colors.white,
                    size: 25.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
