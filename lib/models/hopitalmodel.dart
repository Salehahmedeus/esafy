import 'dart:convert';

class Hospitalmodel {
  String name;
  String address;
  String phone;
  String latitude;
  String longitude;

  Hospitalmodel({
    required this.name,
    required this.address,
    required this.phone,
    required this.latitude,
    required this.longitude,
  });

  factory Hospitalmodel.fromRawJson(String str) =>
      Hospitalmodel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Hospitalmodel.fromJson(Map<String, dynamic> json) => Hospitalmodel(
        name: json["name"],
        address: json["address"],
        phone: json["phone"],
        latitude: json["latitude"],
        longitude: json["longitude"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "address": address,
        "phone": phone,
        "latitude": latitude,
        "longitude": longitude,
      };
}
