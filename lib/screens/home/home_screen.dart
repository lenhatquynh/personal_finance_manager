import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';
import 'package:personal_finance_manager/shared/components/home/net_filter.dart';
import 'package:personal_finance_manager/shared/components/home/search_sliding_up.dart';
import 'package:personal_finance_manager/shared/components/transactions/transaction_history_section.dart';
import 'package:personal_finance_manager/shared/styles/asset.dart';

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
              onPressed: () => showSearchUI(context),
              icon: Icon(
                Iconsax.search_normal_1,
                color: colorScheme.onPrimary,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                AppAsset.filter,
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
          children: const [
            NetFilter(),
            Gap(16),
            TransactionHistorySection(),
          ],
        ),
      ),
    );
  }
}
