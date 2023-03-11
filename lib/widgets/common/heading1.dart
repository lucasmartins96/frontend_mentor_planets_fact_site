import 'package:flutter/material.dart';
import 'package:frontend_mentor_planets_fact_site/colors.dart';

class Heading1 extends StatelessWidget {
  const Heading1({required this.data, super.key});

  final String data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data.toUpperCase(),
      style: const TextStyle(
        fontFamily: 'Antonio',
        fontSize: 80,
        height: 103,
        color: AppColors.white,
      ),
    );
  }
}
