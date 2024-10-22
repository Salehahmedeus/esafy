import 'dart:convert';

class Bookingmodel {
  String userid;
  String ambulanceId;
  String pickupLocation;
  String dropoffLocation;
  String status;

  Bookingmodel({
    required this.userid,
    required this.ambulanceId,
    required this.pickupLocation,
    required this.dropoffLocation,
    required this.status,
  });

  factory Bookingmodel.fromRawJson(String str) =>
      Bookingmodel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Bookingmodel.fromJson(Map<String, dynamic> json) => Bookingmodel(
        userid: json["userid"],
        ambulanceId: json["ambulanceId"],
        pickupLocation: json["pickupLocation"],
        dropoffLocation: json["dropoffLocation"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "userid": userid,
        "ambulanceId": ambulanceId,
        "pickupLocation": pickupLocation,
        "dropoffLocation": dropoffLocation,
        "status": status,
      };
}
