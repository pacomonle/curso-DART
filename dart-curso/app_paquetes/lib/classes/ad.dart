// To parse this JSON data, do
//
//     final ad = adFromJson(jsonString);

import 'dart:convert';

Ad adFromJson(String str) => Ad.fromJson(json.decode(str));

String adToJson(Ad data) => json.encode(data.toJson());

class Ad {
  Ad({
    this.company,
    this.url,
    this.text,
  });

  String company;
  String url;
  String text;

  factory Ad.fromJson(Map<String, dynamic> json) => Ad(
        company: json['company'],
        url: json['url'],
        text: json['text'],
      );

  Map<String, dynamic> toJson() => {
        'company': company,
        'url': url,
        'text': text,
      };
}
