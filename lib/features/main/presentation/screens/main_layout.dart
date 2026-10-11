import 'package:doctor_appointment_consultation_app/core/utils/app_colors.dart';
import 'package:doctor_appointment_consultation_app/features/main/presentation/models/main_tab_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: MainTabModel.tabs.map((tab) => tab.screen).toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: AppColors.white,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.primary,
        items: MainTabModel.tabs.map((tab) {
          return BottomNavigationBarItem(
            icon: SvgPicture.asset(
              tab.iconAsset,
              width: 24,
              height: 24,
              colorFilter: const ColorFilter.mode(
                AppColors.black,
                BlendMode.srcIn,
              ),
            ),
            activeIcon: Container(
              width: 48,
              height: 48,
              decoration:  BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(10)
              ),
              alignment: Alignment.center,
              child: SvgPicture.asset(
                tab.iconAsset,
                width: 24,
                height: 24,
                colorFilter: const ColorFilter.mode(
                  AppColors.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
            label: tab.label,
          );
        }).toList(),
      ),
    );
  }
}
