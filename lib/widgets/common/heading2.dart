import 'package:flutter/material.dart';
import 'package:frontend_mentor_planets_fact_site/colors.dart';

class Heading2 extends StatelessWidget {
  const Heading2({required this.data, super.key});

  final String data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data.toUpperCase(),
      style: const TextStyle(
        fontFamily: 'Antonio',
        fontSize: 40,
        height: 52,
        letterSpacing: -1.5,
        color: AppColors.white,
      ),
    );
  }
}
