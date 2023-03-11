import 'package:flutter/material.dart';
import 'package:frontend_mentor_planets_fact_site/colors.dart';

class Heading4 extends StatelessWidget {
  const Heading4({required this.data, super.key});

  final String data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data.toUpperCase(),
      style: const TextStyle(
        fontFamily: 'Antonio',
        fontSize: 11,
        height: 25,
        letterSpacing: 1,
        color: AppColors.white,
      ),
    );
  }
}
