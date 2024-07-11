import 'package:flutter/material.dart';

import '../common/assets.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomBottomNavBar({super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      elevation: 2,
      backgroundColor: Colors.white,
      currentIndex: currentIndex,
      onTap: onTap,
      items: [
        BottomNavigationBarItem(icon: Image.asset(AppImages.home), label: "홈"),
        BottomNavigationBarItem(icon: Image.asset(AppImages.dash), label: '카테고리'),
        BottomNavigationBarItem(icon: Image.asset(AppImages.utils), label: '커뮤니티'),
        BottomNavigationBarItem(icon: Image.asset(AppImages.profile), label: '마이페이지'),
      ],
    );
  }
}