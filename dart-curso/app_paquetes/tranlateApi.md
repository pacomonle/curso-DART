// To parse this JSON data, do
//
//     final translations = translationsFromJson(jsonString);

import 'dart:convert';

Translations translationsFromJson(String str) => Translations.fromJson(json.decode(str));

String translationsToJson(Translations data) => json.encode(data.toJson());

class Translations {
    Translations({
        this.translations,
    });

    TranslationsClass translations;

    factory Translations.fromJson(Map<String, dynamic> json) => Translations(
        translations: TranslationsClass.fromJson(json["translations"]),
    );

    Map<String, dynamic> toJson() => {
        "translations": translations.toJson(),
    };
}

class TranslationsClass {
    TranslationsClass({
        this.de,
        this.es,
        this.fr,
        this.ja,
        this.it,
        this.br,
        this.pt,
        this.nl,
        this.hr,
        this.fa,
    });

    String de;
    String es;
    String fr;
    String ja;
    String it;
    String br;
    String pt;
    String nl;
    String hr;
    String fa;

    factory TranslationsClass.fromJson(Map<String, dynamic> json) => TranslationsClass(
        de: json["de"],
        es: json["es"],
        fr: json["fr"],
        ja: json["ja"],
        it: json["it"],
        br: json["br"],
        pt: json["pt"],
        nl: json["nl"],
        hr: json["hr"],
        fa: json["fa"],
    );

    Map<String, dynamic> toJson() => {
        "de": de,
        "es": es,
        "fr": fr,
        "ja": ja,
        "it": it,
        "br": br,
        "pt": pt,
        "nl": nl,
        "hr": hr,
        "fa": fa,
    };
}
