// ignore_for_file: public_member_api_docs
import 'dart:convert';

class Image {
  Image({required this.planet, required this.internal, required this.geology});

  factory Image.fromJson(String source) =>
      Image.fromMap(json.decode(source) as Map<String, dynamic>);

  factory Image.fromMap(Map<String, dynamic> map) {
    return Image(
      planet: map['planet'] as String,
      internal: map['internal'] as String,
      geology: map['geology'] as String,
    );
  }

  final String planet;
  final String internal;
  final String geology;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'planet': planet,
      'internal': internal,
      'geology': geology,
    };
  }

  String toJson() => json.encode(toMap());
}
