import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:personal_finance_manager/core/app_styles/app_assets.dart';
import 'package:personal_finance_manager/core/app_styles/app_colors.dart';
import 'package:animated_number_switcher/animated_number_switcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBackground,
      appBar: AppBar(
        backgroundColor: AppColors.darkBackground,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              focusColor: AppColors.white,
              onPressed: () {},
              icon: const Icon(
                Iconsax.search_normal_1,
                color: AppColors.white,
              ),
            ),
            IconButton(
              focusColor: AppColors.white,
              onPressed: () {},
              icon: SvgPicture.asset(
                AppAssets.filter,
                colorFilter: const ColorFilter.mode(
                  AppColors.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: ListView(
          children: [
            const Row(
              children: [
                Text(
                  "Net total",
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                
              ],
            ),
            AnimatedNumberSwitcher.text(
              "1245,20",
              style: const TextStyle(
                color: AppColors.white,
                fontSize: 40,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
