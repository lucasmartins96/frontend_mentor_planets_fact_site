import 'package:frontend_mentor_planets_fact_site/models/models.dart';

abstract class PlanetsRepository {
  Future<List<Planet>> getAllPlanets();
}
