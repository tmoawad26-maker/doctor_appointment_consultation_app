import 'package:doctor_appointment_consultation_app/features/auth/presentation/widgets/custom_login_body.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CustomLoginBody(),
      ),
    );
  }
}
