// To parse this JSON data, do
//
//     final reqResResponse = reqResResponseFromJson(jsonString);

import 'dart:convert';

import 'persona.dart';
import 'ad.dart';

ReqResResponse reqResResponseFromJson(String str) =>
    ReqResResponse.fromJson(json.decode(str));

String reqResResponseToJson(ReqResResponse data) => json.encode(data.toJson());

class ReqResResponse {
  int page;
  int perPage;
  int total;
  int totalPages;
  // F2 rename symbol Datum -> Persona
  List<Persona> data;
  Ad ad;

  ReqResResponse({
    this.page,
    this.perPage,
    this.total,
    this.totalPages,
    this.data,
    this.ad,
  });

  factory ReqResResponse.fromJson(Map<String, dynamic> json) => ReqResResponse(
        page: json['page'],
        perPage: json['per_page'],
        total: json['total'],
        totalPages: json['total_pages'],
        data: List<Persona>.from(json['data'].map((x) => Persona.fromJson(x))),
        ad: Ad.fromJson(json['ad']),
      );

  Map<String, dynamic> toJson() => {
        'page': page,
        'per_page': perPage,
        'total': total,
        'total_pages': totalPages,
        'data': List<dynamic>.from(data.map((x) => x.toJson())),
        'ad': ad.toJson(),
      };
}
