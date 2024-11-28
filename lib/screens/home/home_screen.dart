import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:personal_finance_manager/shared/styles/assets.dart';
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
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AppBar(
        backgroundColor: colorScheme.surface,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Iconsax.search_normal_1,
                color: colorScheme.onPrimary,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                AppAssets.filter,
                colorFilter: ColorFilter.mode(
                  colorScheme.onPrimary,
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
            Row(
              children: [
                Text(
                  "Net total",
                  style: TextStyle(
                    color: colorScheme.onPrimary,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            AnimatedNumberSwitcher.text(
              "1245,20",
              style: TextStyle(
                color: colorScheme.onPrimary,
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
