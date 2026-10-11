import 'package:doctor_appointment_consultation_app/core/utils/app_colors.dart';
import 'package:doctor_appointment_consultation_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
    required this.hintText,
    this.suffixIcon,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
  });
  final String hintText;
  final Widget? suffixIcon;
  final FormFieldValidator<String>? validator;
  final TextInputType keyboardType;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.07, right: 25.93),
      child: TextFormField(
        cursorColor: AppColors.primary,
        validator: validator,
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: AppColors.grey.withValues(alpha: .1),
          hintText: hintText,
          hintStyle: AppStyles.textStyle18Regular,
        ),
      ),
    );
  }
}
