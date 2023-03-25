import 'dart:async';

import 'package:app/constants.dart';
import 'package:app/controllers/location.dart';
import 'package:app/controllers/location.dart';
import 'package:app/models/location_model.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class BackGroundPage extends StatefulWidget {
  const BackGroundPage({super.key});

  @override
  State<BackGroundPage> createState() => _BackGroundPageState();
}

class _BackGroundPageState extends State<BackGroundPage> {
  final locationDao = LocationDao();

  Future<void> sendLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    final location = Location(position.latitude.toString(),
        position.longitude.toString(), DateTime.now());

    locationDao.saveMessage(location);
    if (currentIndex == 2) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    if (currentIndex == 2) {
      Timer.periodic(Duration(seconds: 2), (Timer t) => sendLocation());
    }

    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Your location is sharing with the police',
          style: TextStyle(fontSize: 30),
          textAlign: TextAlign.center,
        ),
      )),
    );
  }
}
