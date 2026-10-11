import 'package:doctor_appointment_consultation_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .center,
      children: [
        SizedBox(height: 30),
        Text(title, style: AppStyles.textStyle26Bold),
      ],
    );
  }
}
