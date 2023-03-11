import 'package:flutter/material.dart';
import 'package:frontend_mentor_planets_fact_site/colors.dart';

class BodyText extends StatelessWidget {
  const BodyText({required this.data, super.key});

  final String data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: const TextStyle(
        fontFamily: 'LeagueSpartan',
        fontSize: 14,
        height: 25,
        color: AppColors.white,
      ),
    );
  }
}
