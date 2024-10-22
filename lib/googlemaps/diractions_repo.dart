import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:esafy/googlemaps/directions.dart';
import 'package:esafy/helper/const.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DirectionsRepo {
  static const String _baseUrl =
      'https://maps.googleapis.com/maps/api/directions/json?';

  final Dio _dio;

  DirectionsRepo({Dio? dio}) : _dio = dio ?? Dio();

  Future<Directions?> getDirections({
    required LatLng destination,
    required LatLng origin,
  }) async {
    final response = await _dio.get(_baseUrl, queryParameters: {
      'origin': '${origin.latitude},${origin.longitude}',
      'destination': '${destination.latitude},${destination.longitude}',
      'key': googleApiKey,
    });

    // Check if the status code is 200 and handle the response
    if (response.statusCode == 200) {
      // No need to use jsonDecode, since Dio automatically handles the JSON response
      final data = response.data as Map<String, dynamic>;
      print("Secsuss to load directions: ${response.statusCode}");
      // Ensure that data is parsed into the Directions object
      return Directions.fromMap(response.data);
    } else {
      // Handle the case when status code is not 200
      print("Failed to load directions: ${response.statusCode}");
      return null;
    }
  }
}
