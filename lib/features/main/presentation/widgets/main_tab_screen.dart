import 'package:doctor_appointment_consultation_app/core/utils/app_strings.dart';
import 'package:doctor_appointment_consultation_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class HourTabScreen extends StatelessWidget {
  const HourTabScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          AppStrings.appointmentsTab,
          style: AppStyles.textStyle22SemiBold,
        ),
      ),
    );
  }
}

class MessageTabScreen extends StatelessWidget {
  const MessageTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(AppStrings.messagesTab, style: AppStyles.textStyle22SemiBold),
      ),
    );
  }
}

class ProfileTabScreen extends StatelessWidget {
  const ProfileTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(AppStrings.profileTab, style: AppStyles.textStyle22SemiBold),
      ),
    );
  }
}
