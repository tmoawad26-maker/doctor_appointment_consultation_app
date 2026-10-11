import 'package:doctor_appointment_consultation_app/core/utils/app_styles.dart';
import 'package:doctor_appointment_consultation_app/features/auth/presentation/widgets/custom_form_field.dart';
import 'package:flutter/material.dart';

class FormValidation extends StatelessWidget {
  const FormValidation({
    super.key,
    required this.label,
    required this.hintText,
    this.suffixIcon,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
  });
  final String label, hintText;
  final Widget? suffixIcon;
  final FormFieldValidator<String>? validator;
  final TextInputType keyboardType;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 27.57),
          child: Text(label, style: AppStyles.textStyle22SemiBold),
        ),
        SizedBox(height: 8),
        CustomFormField(
          hintText: hintText,
          suffixIcon: suffixIcon,
          validator: validator,
          keyboardType: keyboardType,
          obscureText: obscureText,
        ),
      ],
    );
  }
}
