import 'package:doctor_appointment_consultation_app/core/routing/app_router.dart';
import 'package:doctor_appointment_consultation_app/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

class DoctorAppoinmentApp extends StatelessWidget {
  const DoctorAppoinmentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      title: AppStrings.appName,
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.createRouter,
    );
  }
}
