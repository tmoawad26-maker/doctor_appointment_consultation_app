import 'package:doctor_appointment_consultation_app/core/utils/app_strings.dart';
import 'package:doctor_appointment_consultation_app/core/utils/assets.dart';
import 'package:doctor_appointment_consultation_app/features/home/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';

import 'package:doctor_appointment_consultation_app/features/main/presentation/widgets/main_tab_screen.dart';

class MainTabModel {
  const MainTabModel({
    required this.label,
    required this.iconAsset,
    required this.screen,
  });

  final String label;
  final String iconAsset;
  final Widget screen;

  static const List<MainTabModel> tabs = [
    MainTabModel(
      label: AppStrings.homeTab,
      iconAsset: Assets.iconsHome,
      screen: HomeScreen(),
    ),
    MainTabModel(
      label: AppStrings.appointmentsTab,
      iconAsset: Assets.iconsHour,
      screen: HourTabScreen(),
    ),
    MainTabModel(
      label: AppStrings.messagesTab,
      iconAsset: Assets.iconsMessage,
      screen: MessageTabScreen(),
    ),
    MainTabModel(
      label: AppStrings.profileTab,
      iconAsset: Assets.iconsProfile,
      screen: ProfileTabScreen(),
    ),
  ];
}
