import 'package:dio/dio.dart';
import 'package:esafy/googlemaps/directions.dart';
import 'package:esafy/helpers/const.dart';
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


    if (response.statusCode == 200) {

      final data = response.data as Map<String, dynamic>;
      print("Secsuss to load directions: ${response.statusCode}");
      return Directions.fromMap(response.data);
    } else {

      print("Failed to load directions: ${response.statusCode}");
      return null;
    }
  }
}
