import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:frontend_mentor_planets_fact_site/models/planet.dart';
import 'package:frontend_mentor_planets_fact_site/repository/repository.dart';

class PlanetsRepositoryLocally implements PlanetsRepository {
  @override
  Future<List<Planet>> getAllPlanets() async {
    final stringifyData =
        await rootBundle.loadString('lib/assets/json/data.json');
    final planets = jsonDecode(stringifyData) as List<dynamic>;
    final pl = <Planet>[];

    for (final p in planets) {
      pl.add(Planet.fromMap(p as Map<String, dynamic>));
    }

    return pl;
  }
}
