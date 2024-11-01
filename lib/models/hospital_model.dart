import 'dart:convert';

class Hospitalmodel {
  String name;
  String address;
  String phone;

  Hospitalmodel({
    required this.name,
    required this.address,
    required this.phone,
  });

  factory Hospitalmodel.fromRawJson(String str) =>
      Hospitalmodel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Hospitalmodel.fromJson(Map<String, dynamic> json) => Hospitalmodel(
        name: json["name"],
        address: json["address"],
        phone: json["phone"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "address": address,
        "phone": phone     
      };
}