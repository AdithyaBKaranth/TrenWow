import 'package:flutter/rendering.dart';

class Note {
  String? name;
  String? password;
  String? email;
  String? phone;
  String? address;
  String? about;
  String? type;
  String? gst;
  DateTime? dateadded;

  Note(
      {this.name,
      this.email,
      this.password,
      this.phone,
      this.about,
      this.address,
      this.gst,
      this.type,
      this.dateadded});

  factory Note.fromMap(Map<String, dynamic> map) {
    return Note(
        name: map["name"],
        email: map["email"],
        phone: map["phone"],
        password: map["password"],
        address: map["address"],
        about: map["about"],
        type: map["type"],
        gst: map["gst"],
        dateadded: DateTime.tryParse(map["dateadded"]));
  }
  Map<String, dynamic> toMap() {
    return {
      "name": name,
      "email": email,
      "phone": phone,
      "password": password,
      "address": address,
      "about": about,
      "type": type,
      "gst": gst,
      "dateadded": dateadded!.toIso8601String()
    };
  }
}
