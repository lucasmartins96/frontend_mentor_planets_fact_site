import 'package:flutter/material.dart';
import 'package:frontend_mentor_planets_fact_site/page_home.dart';

class PlanetsFactSite extends StatelessWidget {
  const PlanetsFactSite({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
