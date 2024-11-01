import 'dart:convert';

class Usermodel {
  String id;
  String phone;
  DateTime dob;
  String latitude;
  String longitude;

  Usermodel({
    required this.id,
    required this.phone,
    required this.dob,
    required this.latitude,
    required this.longitude,
  });

  factory Usermodel.fromRawJson(String str) =>
      Usermodel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Usermodel.fromJson(Map<String, dynamic> json) => Usermodel(
        id: json["id"],
        phone: json["phone"],
        dob: DateTime.parse(json["DOB"]),
        latitude: json["latitude"],
        longitude: json["longitude"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "phone": phone,
        "DOB":
            "${dob.year.toString().padLeft(4, '0')}-${dob.month.toString().padLeft(2, '0')}-${dob.day.toString().padLeft(2, '0')}",
        "latitude": latitude,
        "longitude": longitude,
      };
}
