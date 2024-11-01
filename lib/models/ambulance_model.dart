import 'dart:convert';

class Ambulancemodel {
  String id;
  String status;
  String latitude;
  String longitude;

  Ambulancemodel({
    required this.id,
    required this.status,
    required this.latitude,
    required this.longitude,
  });

  factory Ambulancemodel.fromRawJson(String str) =>
      Ambulancemodel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Ambulancemodel.fromJson(Map<String, dynamic> json) => Ambulancemodel(
        id: json["id"],
        status: json["status"],
        latitude: json["latitude"],
        longitude: json["longitude"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "status": status,
        "latitude": latitude,
        "longitude": longitude,
      };
}