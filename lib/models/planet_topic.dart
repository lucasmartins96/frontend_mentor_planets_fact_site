// ignore_for_file: public_member_api_docs,
import 'dart:convert';

class PlanetTopic {
  PlanetTopic({required this.content, required this.source});

  factory PlanetTopic.fromJson(String source) =>
      PlanetTopic.fromMap(json.decode(source) as Map<String, dynamic>);

  factory PlanetTopic.fromMap(Map<String, dynamic> map) {
    return PlanetTopic(
      content: map['content'] as String,
      source: map['source'] as String,
    );
  }

  final String content;
  final String source;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'source': source,
    };
  }

  String toJson() => json.encode(toMap());
}
