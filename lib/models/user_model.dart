import 'dart:convert';

class Usermodel {
  String id;
  String name;
  String phone;
  DateTime dob;
  String gender;
  String latitude;
  String longitude;

  Usermodel({
    required this.id,
    required this.name,
    required this.phone,
    required this.dob,
    required this.gender,
    required this.latitude,
    required this.longitude,
  });

  factory Usermodel.fromRawJson(String str) =>
      Usermodel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Usermodel.fromJson(Map<String, dynamic> json) => Usermodel(
        id: json["id"],
        name: json["name"],
        phone: json["phone"],
        dob: DateTime.parse(json["DOB"]),
        gender: json["gender"],
        latitude: json["latitude"],
        longitude: json["longitude"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "phone": phone,
        "DOB":
            "${dob.year.toString().padLeft(4, '0')}-${dob.month.toString().padLeft(2, '0')}-${dob.day.toString().padLeft(2, '0')}",
        "gender": gender,
        "latitude": latitude,
        "longitude": longitude,
      };
}
