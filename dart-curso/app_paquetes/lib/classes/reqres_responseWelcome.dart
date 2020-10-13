// To parse this JSON data, do
//
//     final reqResResponse = reqResResponseFromJson(jsonString);

import 'dart:convert';

ReqResResponse reqResResponseFromJson(String str) =>
    ReqResResponse.fromJson(json.decode(str));

String reqResResponseToJson(ReqResResponse data) => json.encode(data.toJson());

class ReqResResponse {
  // propiedaes
  String greeting;
  List<String> instructions;
  // constructor
  ReqResResponse({
    this.greeting,
    this.instructions,
  });
// factory constructor - regresa instancia de mi class
  factory ReqResResponse.fromJson(Map<String, dynamic> json) => ReqResResponse(
        greeting: json['greeting'],
        instructions: List<String>.from(json['instructions'].map((x) => x)),
      );
// para posteos - convertir a Json
  Map<String, dynamic> toJson() => {
        'greeting': greeting,
        'instructions': List<dynamic>.from(instructions.map((x) => x)),
      };
}
