import 'package:flutter/foundation.dart';

class ContestCardModel {
  final String contestName;
  final String longDescription;
  final String prize; // To take values such 100k
  final String time; // To take values sucn as 1h
  final String competitor1;
  final String competitor2;

  ContestCardModel({
    this.contestName,
    this.longDescription,
    this.prize,
    this.time,
    @required this.competitor1,
    @required this.competitor2,
  });
}
