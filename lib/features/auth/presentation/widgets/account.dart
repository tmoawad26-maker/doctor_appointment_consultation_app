import 'package:doctor_appointment_consultation_app/core/routing/routes.dart';
import 'package:doctor_appointment_consultation_app/core/utils/app_colors.dart';
import 'package:doctor_appointment_consultation_app/core/utils/app_strings.dart';
import 'package:doctor_appointment_consultation_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AccountWidget extends StatelessWidget {
  const AccountWidget({
    super.key,
    required this.existAccount,
    this.prompt = AppStrings.donotAccount,
    this.route = Routes.signUp,
  });
  final String existAccount;
  final String prompt;
  final String route;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            prompt,
            style: AppStyles.textStyle16Regular.copyWith(fontWeight: .w600),
          ),
          TextButton(
            onPressed: () => context.go(route),
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              minimumSize: Size.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            child: Text(
              existAccount,
              style: AppStyles.textStyle16Regular.copyWith(
                fontWeight: .bold,
                color: AppColors.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
