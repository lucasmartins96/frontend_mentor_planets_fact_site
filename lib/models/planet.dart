// ignore_for_file: public_member_api_docs
import 'dart:convert';

import 'package:frontend_mentor_planets_fact_site/models/models.dart';

class Planet {
  Planet({
    required this.name,
    required this.overview,
    required this.structure,
    required this.geology,
    required this.rotation,
    required this.revolution,
    required this.radius,
    required this.temperature,
    required this.images,
  });

  factory Planet.fromJson(String source) =>
      Planet.fromMap(json.decode(source) as Map<String, dynamic>);

  factory Planet.fromMap(Map<String, dynamic> map) {
    return Planet(
      name: map['name'] as String,
      overview: PlanetTopic.fromMap(map['overview'] as Map<String, dynamic>),
      structure: PlanetTopic.fromMap(map['structure'] as Map<String, dynamic>),
      geology: PlanetTopic.fromMap(map['geology'] as Map<String, dynamic>),
      rotation: map['rotation'] as String,
      revolution: map['revolution'] as String,
      radius: map['radius'] as String,
      temperature: map['temperature'] as String,
      images: Image.fromMap(map['images'] as Map<String, dynamic>),
    );
  }

  final String name;
  final PlanetTopic overview;
  final PlanetTopic structure;
  final PlanetTopic geology;
  final String rotation;
  final String revolution;
  final String radius;
  final String temperature;
  final Image images;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'overview': overview.toMap(),
      'structure': structure.toMap(),
      'geology': geology.toMap(),
      'rotation': rotation,
      'revolution': revolution,
      'radius': radius,
      'temperature': temperature,
      'images': images.toMap(),
    };
  }

  String toJson() => json.encode(toMap());
}
