import 'dart:convert';

class Ambulancemodel {
  String id;
  String drivername;
  String driverphone;
  String availability;
  String location;

  Ambulancemodel({
    required this.id,
    required this.drivername,
    required this.driverphone,
    required this.availability,
    required this.location,
  });

  factory Ambulancemodel.fromRawJson(String str) =>
      Ambulancemodel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Ambulancemodel.fromJson(Map<String, dynamic> json) => Ambulancemodel(
        id: json["id"],
        drivername: json["drivername"],
        driverphone: json["driverphone"],
        availability: json["availability"],
        location: json["location"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "drivername": drivername,
        "driverphone": driverphone,
        "availability": availability,
        "location": location,
      };
}