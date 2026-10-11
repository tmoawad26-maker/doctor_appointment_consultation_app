import 'package:doctor_appointment_consultation_app/core/utils/app_colors.dart';
import 'package:doctor_appointment_consultation_app/core/utils/app_strings.dart';
import 'package:doctor_appointment_consultation_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ForgetPasswordWidget extends StatelessWidget {
  const ForgetPasswordWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 12.3),
      child: Align(
        alignment: .topRight,
        child: Text(AppStrings.forgetPassword,style: AppStyles.textStyle18Regular.copyWith(
          color: AppColors.black,
          fontWeight: .w600,
        ),),
      ),
    );
  }
}
