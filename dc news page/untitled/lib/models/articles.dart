// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

List<Welcome> welcomeFromJson(String str) => List<Welcome>.from(json.decode(str).map((x) => Welcome.fromJson(x)));

String welcomeToJson(List<Welcome> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Welcome {
  String id;
  String heading;
  String content;
  String? hyperlink;
  int? v;

  Welcome({
    required this.id,
    required this.heading,
    required this.content,
     this.hyperlink,
    this.v,
  });

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    id: json["_id"],
    heading: json["heading"],
    content: json["content"],
    hyperlink: json["hyperlink"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "heading": heading,
    "content": content,
    "hyperlink": hyperlink,
    "__v": v,
  };
}
