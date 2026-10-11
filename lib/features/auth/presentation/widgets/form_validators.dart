import 'package:doctor_appointment_consultation_app/core/utils/app_strings.dart';

class FormValidators {
  const FormValidators._();

  static final RegExp _passwordPattern = RegExp(
    r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*(),.?":{}|<>]).{8,}$',
  );
  static final RegExp _emailPattern = RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]+$');
  static final RegExp _mobilePhonePattern = RegExp(r'^(011|012|015)\d{8}$');
  static String? email(String? value) {
    final email = value?.trim() ?? '';
    if (email.isEmpty) return AppStrings.emailRequired;
    if (!_emailPattern.hasMatch(email)) {
      return AppStrings.invalidEmail;
    }
    return null;
  }

  static String? fullName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return AppStrings.fullNameRequired;
    }
    return null;
  }

  static String? mobilePhone(String? value) {
    if (value == null || value.trim().isEmpty) {
      return AppStrings.mobilePhoneRequired;
    }
    if (!_mobilePhonePattern.hasMatch(value.trim())) {
      return AppStrings.invalidMobilePhone;
    }
    return null;
  }

  static String? password(String? value) {
    if (value == null || value.isEmpty) return AppStrings.passwordRequired;
    if (!_passwordPattern.hasMatch(value)) {
      return AppStrings.invalidPassword;
    }
    return null;
  }
}
