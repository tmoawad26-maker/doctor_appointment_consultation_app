import 'package:doctor_appointment_consultation_app/core/utils/app_colors.dart';
import 'package:doctor_appointment_consultation_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInWithSocialMedia extends StatelessWidget {
  const SignInWithSocialMedia({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppColors.white,
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.light),
          ),
          child: FaIcon(
            FontAwesomeIcons.facebook,
            color: AppColors.blue,
            size: 32,
          ),
        ),
        const SizedBox(width: 24),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppColors.white,
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.light),
          ),
          child: Image.asset(
            Assets.googlePngIc,
            width: 32,
            height: 32,
          ),
        ),
      ],
    );
  }
}
