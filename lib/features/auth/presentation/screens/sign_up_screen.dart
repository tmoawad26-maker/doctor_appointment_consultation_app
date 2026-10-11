import 'package:doctor_appointment_consultation_app/core/routing/routes.dart';
import 'package:doctor_appointment_consultation_app/core/utils/app_colors.dart';
import 'package:doctor_appointment_consultation_app/core/utils/app_strings.dart';
import 'package:doctor_appointment_consultation_app/core/utils/app_styles.dart';
import 'package:doctor_appointment_consultation_app/core/widgets/custom_elevated_button.dart';
import 'package:doctor_appointment_consultation_app/features/auth/presentation/widgets/account.dart';
import 'package:doctor_appointment_consultation_app/features/auth/presentation/widgets/form_validation.dart';
import 'package:doctor_appointment_consultation_app/features/auth/presentation/widgets/form_validators.dart';
import 'package:doctor_appointment_consultation_app/features/auth/presentation/widgets/header_widget.dart';
import 'package:doctor_appointment_consultation_app/features/auth/presentation/widgets/sign_in_with_social_media.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _isPasswordVisible = false;

  void _submit() {
    if (!(_formKey.currentState?.validate() ?? false)) return;
    context.go(Routes.mainLayout);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 26),
                  child: HeaderWidget(title: AppStrings.createAccount,)
                ),
                const SizedBox(height: 36),
                FormValidation(
                  label: AppStrings.fullName,
                  hintText: AppStrings.enterFullName,
                  validator: FormValidators.fullName,
                  keyboardType: TextInputType.name,
                ),
                const SizedBox(height: 20),
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
                    onPressed: () => setState(
                      () => _isPasswordVisible = !_isPasswordVisible,
                    ),
                    tooltip: _isPasswordVisible
                        ? AppStrings.hidePassword
                        : AppStrings.showPassword,
                    icon: Icon(
                      _isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: AppColors.primary,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                FormValidation(
                  label: AppStrings.mobilePhone,
                  hintText: AppStrings.enterMobilePhone,
                  validator: FormValidators.mobilePhone,
                  keyboardType: TextInputType.phone,
                ),
                const SizedBox(height: 36),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 26.4),
                  child: CustomElevatedButton(
                    textButton: AppStrings.createAccount,
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
                const SizedBox(height: 38),
                const AccountWidget(
                  prompt: AppStrings.alreadyHaveAccount,
                  existAccount: AppStrings.signIn,
                  route: Routes.login,
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
