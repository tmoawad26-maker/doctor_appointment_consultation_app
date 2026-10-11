import 'package:doctor_appointment_consultation_app/core/routing/routes.dart';
import 'package:doctor_appointment_consultation_app/core/utils/app_colors.dart';
import 'package:doctor_appointment_consultation_app/core/utils/app_strings.dart';
import 'package:doctor_appointment_consultation_app/core/utils/app_styles.dart';
import 'package:doctor_appointment_consultation_app/core/widgets/custom_elevated_button.dart';
import 'package:doctor_appointment_consultation_app/features/auth/presentation/widgets/account.dart';
import 'package:doctor_appointment_consultation_app/features/auth/presentation/widgets/forget_password_widget.dart';
import 'package:doctor_appointment_consultation_app/features/auth/presentation/widgets/form_validation.dart';
import 'package:doctor_appointment_consultation_app/features/auth/presentation/widgets/form_validators.dart';
import 'package:doctor_appointment_consultation_app/features/auth/presentation/widgets/header_widget.dart';
import 'package:doctor_appointment_consultation_app/features/auth/presentation/widgets/sign_in_with_social_media.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomLoginBody extends StatefulWidget {
  const CustomLoginBody({super.key});

  @override
  State<CustomLoginBody> createState() => _CustomLoginBodyState();
}

class _CustomLoginBodyState extends State<CustomLoginBody> {
  final _formKey = GlobalKey<FormState>();
  bool _isPasswordVisible = false;

  void _submit() {
    if (!(_formKey.currentState?.validate() ?? false)) return;
    context.go(Routes.mainLayout);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const HeaderWidget(title: AppStrings.welcome,),
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.signIn,
                    style: AppStyles.textStyle26Bold.copyWith(
                      color: AppColors.black,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    AppStrings.subTitle,
                    style: AppStyles.textStyle18Regular,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 36),
            FormValidation(
              label: AppStrings.emailLabel,
              hintText: AppStrings.enterYourEmail,
              validator: FormValidators.email,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),
            FormValidation(
              label: AppStrings.password,
              hintText: AppStrings.enterPassword,
              validator: FormValidators.password,
              keyboardType: TextInputType.visiblePassword,
              obscureText: !_isPasswordVisible,
              suffixIcon: IconButton(
                onPressed: () =>
                    setState(() => _isPasswordVisible = !_isPasswordVisible),
                tooltip: _isPasswordVisible
                    ? AppStrings.hidePassword
                    : AppStrings.showPassword,
                icon: Icon(
                  _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                  color: AppColors.primary,
                ),
              ),
            ),
            const SizedBox(height: 12),
            const ForgetPasswordWidget(),
            const SizedBox(height: 36),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26.4),
              child: CustomElevatedButton(
                textButton: AppStrings.signIn,
                onPressed: _submit,
              ),
            ),
            const SizedBox(height: 24),
            Center(
              child: Text(
                AppStrings.or,
                style: AppStyles.textStyle22SemiBold.copyWith(
                  color: AppColors.grey,
                ),
              ),
            ),
            const SizedBox(height: 16),
            const SignInWithSocialMedia(),
            SizedBox(height: 38),
            const AccountWidget(existAccount: AppStrings.signUp),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
