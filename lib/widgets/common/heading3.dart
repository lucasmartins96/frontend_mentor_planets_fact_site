import 'package:flutter/material.dart';
import 'package:frontend_mentor_planets_fact_site/colors.dart';

class Heading3 extends StatelessWidget {
  const Heading3({required this.data, super.key});

  final String data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data.toUpperCase(),
      style: const TextStyle(
        fontFamily: 'Antonio',
        fontSize: 12,
        height: 25,
        letterSpacing: 2.6,
        color: AppColors.white,
      ),
    );
  }
}
