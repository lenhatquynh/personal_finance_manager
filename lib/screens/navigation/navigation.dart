import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:personal_finance_manager/core/app_styles/app_assets.dart';
import 'package:personal_finance_manager/core/app_styles/app_colors.dart';
import 'package:personal_finance_manager/screens/budgets/budget_screen.dart';
import 'package:personal_finance_manager/screens/home/home_screen.dart';
import 'package:personal_finance_manager/screens/insights/insight_screen.dart';
import 'package:personal_finance_manager/screens/setting/setting_screen.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int selectedTab = 0;
  double scale = 1.0;
  Color transactionColor = AppColors.white;
  List<String> tabIcon = [
    AppAssets.tabHome,
    AppAssets.tabInsight,
    AppAssets.addSquare,
    AppAssets.tabBudget,
    AppAssets.tabSetting,
  ];
  List<Widget> pages = [
    const HomeScreen(
      title: "Home",
    ),
    const InsightScreen(
      title: "Insights",
    ),
    const InsightScreen(
      title: "Transaction",
    ),
    const BudgetScreen(
      title: "Budgets",
    ),
    const SettingScreen(
      title: "Settings",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        child: Container(
          height: 100,
          decoration: const BoxDecoration(color: AppColors.darkBackground),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              tabIcon.length,
              (index) {
                return GestureDetector(
                  onPanDown: (_) {
                    setState(() {
                      if (index != 2) {
                        scale = 0.7;
                      } else {
                        transactionColor = AppColors.grayDark.shade300;
                      }
                      selectedTab = index;
                    });
                  },
                  onPanEnd: (_) {
                    Future.delayed(const Duration(milliseconds: 50), () {
                      setState(() {
                        scale = 1.0;
                        selectedTab = index;
                        transactionColor = AppColors.white;
                      });
                    });
                  },
                  child: AnimatedScale(
                    scale: selectedTab == index ? scale : 1.0,
                    duration: const Duration(milliseconds: 300),
                    child: index == 2
                        ? DecoratedBox(
                            decoration: BoxDecoration(
                              color: transactionColor,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const SizedBox(
                              width: 50,
                              height: 30,
                              child: Icon(
                                Iconsax.add,
                                color: AppColors.black,
                              ),
                            ),
                          )
                        : SizedBox(
                            width: 30,
                            height: 30,
                            child: SvgPicture.asset(
                              tabIcon[index],
                              colorFilter: ColorFilter.mode(
                                  selectedTab == index
                                      ? AppColors.white
                                      : AppColors.grayDark.shade300,
                                  BlendMode.srcIn),
                            ),
                          ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
      body: pages[selectedTab],
    );
  }
}
