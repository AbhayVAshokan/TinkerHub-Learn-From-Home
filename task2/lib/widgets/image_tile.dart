import 'package:flutter/material.dart';

import '../models/image_card_model.dart';

class ImageTile extends StatelessWidget {
  final ImageCardModel imageCardData;

  ImageTile(this.imageCardData);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);

    return Container(
      width: double.infinity,
      height: (mediaQuery.size.width - 60) / 1.6,
      margin: EdgeInsets.only(
        bottom: 20.0,
        left: 30.0,
        right: 30.0,
      ),
      child: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: (mediaQuery.size.width - 60) / 1.6,
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
                        fontSize: 20.0,
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
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.0),
                    Container(
                      width: mediaQuery.size.width * 0.4,
                      child: Text(
                        imageCardData.shortDescription,
                        overflow: TextOverflow.clip,
                        maxLines: 2,
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 0.8),
                          fontSize: 18.0,
                          letterSpacing: 0.75,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                Icon(Icons.image, color: Colors.white, size: 25.0,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
