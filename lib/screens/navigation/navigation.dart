import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:personal_finance_manager/shared/styles/asset.dart';
import 'package:personal_finance_manager/shared/styles/color.dart';
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
  late Color transactionColor;
  List<String> tabIcon = [
    AppAsset.tabHome,
    AppAsset.tabInsight,
    AppAsset.addSquare,
    AppAsset.tabBudget,
    AppAsset.tabSetting,
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
  void didChangeDependencies() {
    super.didChangeDependencies();
    transactionColor = Theme.of(context).colorScheme.onTertiary;
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      bottomNavigationBar: Material(
        child: Container(
          height: 100,
          decoration: BoxDecoration(color: colorScheme.surface),
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
                        transactionColor = colorScheme.tertiary;
                      }
                      selectedTab = index;
                    });
                  },
                  onPanEnd: (_) {
                    Future.delayed(const Duration(milliseconds: 50), () {
                      setState(() {
                        scale = 1.0;
                        selectedTab = index;
                        transactionColor = colorScheme.onTertiary;
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
                                Icons.add,
                                color: AppColor.black,
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
                                      ? colorScheme.onTertiary
                                      : colorScheme.tertiary,
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
