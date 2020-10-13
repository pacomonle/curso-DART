// To parse this JSON data, do
//
//     final pais = paisFromJson(jsonString);

import 'dart:convert';

import 'currency.dart';
import 'language.dart';
import 'regionalbloc.dart';
import 'translations.dart';

Pais paisFromJson(String str) => Pais.fromJson(json.decode(str));

String paisToJson(Pais data) => json.encode(data.toJson());

class Pais {
  // propiedades
  String name;
  List<String> topLevelDomain;
  String alpha2Code;
  String alpha3Code;
  List<String> callingCodes;
  String capital;
  List<String> altSpellings;
  String region;
  String subregion;
  int population;
  List<double> latlng;
  String demonym;
  double area;
  double gini;
  List<String> timezones;
  List<String> borders;
  String nativeName;
  String numericCode;
  List<Currency> currencies;
  List<Language> languages;
  Translations translations;
  String flag;
  List<RegionalBloc> regionalBlocs;
  String cioc;
// constructor
  Pais({
    this.name,
    this.topLevelDomain,
    this.alpha2Code,
    this.alpha3Code,
    this.callingCodes,
    this.capital,
    this.altSpellings,
    this.region,
    this.subregion,
    this.population,
    this.latlng,
    this.demonym,
    this.area,
    this.gini,
    this.timezones,
    this.borders,
    this.nativeName,
    this.numericCode,
    this.currencies,
    this.languages,
    this.translations,
    this.flag,
    this.regionalBlocs,
    this.cioc,
  });
// constructor factory
  // ignore: unnecessary_new
  factory Pais.fromJson(Map<String, dynamic> json) => new Pais(
        name: json['name'],
        topLevelDomain:
            // ignore: unnecessary_new
            new List<String>.from(json['topLevelDomain'].map((x) => x)),
        alpha2Code: json['alpha2Code'],
        alpha3Code: json['alpha3Code'],
        // ignore: unnecessary_new
        callingCodes: new List<String>.from(json['callingCodes'].map((x) => x)),
        capital: json['capital'],
        // ignore: unnecessary_new
        altSpellings: new List<String>.from(json['altSpellings'].map((x) => x)),
        region: json['region'],
        subregion: json['subregion'],
        population: json['population'],
        // ignore: unnecessary_new
        latlng: new List<double>.from(json['latlng'].map((x) => x)),
        demonym: json['demonym'],
        area: json['area'],
        gini: json['gini'].toDouble(),
        // ignore: unnecessary_new
        timezones: new List<String>.from(json['timezones'].map((x) => x)),
        // ignore: unnecessary_new
        borders: new List<String>.from(json['borders'].map((x) => x)),
        nativeName: json['nativeName'],
        numericCode: json['numericCode'],
        // ignore: unnecessary_new
        currencies: new List<Currency>.from(
            json['currencies'].map((x) => Currency.fromJson(x))),
        // ignore: unnecessary_new
        languages: new List<Language>.from(
            json['languages'].map((x) => Language.fromJson(x))),
        translations: Translations.fromJson(json['translations']),
        flag: json['flag'],
        // ignore: unnecessary_new
        regionalBlocs: new List<RegionalBloc>.from(
            json['regionalBlocs'].map((x) => RegionalBloc.fromJson(x))),
        cioc: json['cioc'],
      );
// para posteos
  Map<String, dynamic> toJson() => {
        'name': name,
        // ignore: unnecessary_new
        'topLevelDomain': new List<dynamic>.from(topLevelDomain.map((x) => x)),
        'alpha2Code': alpha2Code,
        'alpha3Code': alpha3Code,
        // ignore: unnecessary_new
        'callingCodes': new List<dynamic>.from(callingCodes.map((x) => x)),
        'capital': capital,
        // ignore: unnecessary_new
        'altSpellings': new List<dynamic>.from(altSpellings.map((x) => x)),
        'region': region,
        'subregion': subregion,
        'population': population,
        // ignore: unnecessary_new
        'latlng': new List<dynamic>.from(latlng.map((x) => x)),
        'demonym': demonym,
        'area': area,
        'gini': gini,
        // ignore: unnecessary_new
        'timezones': new List<dynamic>.from(timezones.map((x) => x)),
        // ignore: unnecessary_new
        'borders': new List<dynamic>.from(borders.map((x) => x)),
        'nativeName': nativeName,
        'numericCode': numericCode,
        // ignore: unnecessary_new
        'currencies': new List<dynamic>.from(currencies.map((x) => x.toJson())),
        // ignore: unnecessary_new
        'languages': new List<dynamic>.from(languages.map((x) => x.toJson())),
        'translations': translations.toJson(),
        'flag': flag,
        'regionalBlocs':
            // ignore: unnecessary_new
            new List<dynamic>.from(regionalBlocs.map((x) => x.toJson())),
        'cioc': cioc,
      };
}
