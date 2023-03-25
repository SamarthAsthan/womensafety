import 'dart:convert';
import 'package:firebase_database/firebase_database.dart';

class Location {
  final String latitude;
  final String longitude;
  final DateTime timestamp;

  Location(this.latitude, this.longitude, this.timestamp);

  Location.fromJson(Map<dynamic, dynamic> json)
      : timestamp = DateTime.parse(json['timestamp'] as String),
        latitude = json['latitude'] as String,
        longitude = json['longitude'] as String;

  Map<dynamic, dynamic> toJson() => <dynamic, dynamic>{
        'timestamp': timestamp.toString(),
        'latitude': latitude,
        'longitude': longitude
      };
}
