import 'dart:ui';

import '../models/image_card_model.dart';
import '../models/contest_card_model.dart';

const headerColor = Color(0xFF100F10);
const emphasisColor = Color(0xFF5A5B62);
const textColor = Color(0xFF788996);
const secondarybgcolor = Color(0xFFBEC0CA);
const backgroundColor = Color(0xFFE3E3E3);

List<Object> feeds = [
  ImageCardModel(
    imageUrl: 'lib/assets/images/feed_photo1.jpg',
    name: 'Steve Jobs',
    location: 'California',
    shortDescription: 'From today\'s trip :)',
    profilePic: 'lib/assets/images/steve_jobs.jpg',
  ),
  ContestCardModel(
    time: '1h',
    competitor1: 'lib/assets/images/bill_gates.jpg',
    competitor2: 'lib/assets/images/bill_gates.jpg',
    prize: '100k',
    contestName: 'Apple Pie',
    longDescription:
        'International Photography competition in association with WHO.',
  ),
  ImageCardModel(
    imageUrl: 'lib/assets/images/feed_photo2.jpg',
    name: 'Bill Gates',
    location: 'Hyderabad',
    shortDescription: 'Best memories!',
    profilePic: 'lib/assets/images/bill_gates.jpg',
  ),
  ImageCardModel(
    imageUrl: 'lib/assets/images/feed_photo3.jpg',
    name: 'Tony Stark',
    location: 'Qatar',
    shortDescription: 'Memorable Experience...',
    profilePic: 'lib/assets/images/tony_stark.webp',
  ),
  ImageCardModel(
    imageUrl: 'lib/assets/images/feed_photo4.jpg',
    name: 'Sundar Pichai',
    location: 'India',
    shortDescription: 'The best of nature :)',
    profilePic: 'lib/assets/images/sundar_pichai.jpeg',
  ),
  ImageCardModel(
    imageUrl: 'lib/assets/images/feed_photo5.jpg',
    name: 'Steve Rogers',
    location: 'London',
    shortDescription: 'Rising from the ashes!',
    profilePic: 'lib/assets/images/steve_rogers.webp',
  ),
];
