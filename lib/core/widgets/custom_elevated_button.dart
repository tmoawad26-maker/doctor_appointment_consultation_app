import 'package:doctor_appointment_consultation_app/core/utils/app_colors.dart';
import 'package:doctor_appointment_consultation_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.textButton,
    required this.onPressed, this.width, this.height,
  });
  final String textButton;
  final VoidCallback onPressed;
  final double? width, height;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: AppColors.primary,
        minimumSize: Size(width ?? double.infinity, height ?? 60),
      ),
      child: Text(
        textButton,
        style: AppStyles.textStyle20SemiBold.copyWith(color: AppColors.white),
      ),
    );
  }
}
