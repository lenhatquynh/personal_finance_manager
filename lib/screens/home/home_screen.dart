import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:personal_finance_manager/shared/components/home/net_filter.dart';
import 'package:personal_finance_manager/shared/components/home/search_sliding_up.dart';
import 'package:personal_finance_manager/shared/components/transactions/transaction_history_section.dart';
import 'package:personal_finance_manager/shared/styles/asset.dart';
import 'package:personal_finance_manager/shared/styles/font_size.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _selectedFilter = 'all entries'; // Default filter value
  final List<Map<String, dynamic>> filterDisplayNames = [
    {'name': 'all entries', 'icon': Icons.all_inclusive},
    {'name': 'by type', 'icon': Icons.filter_alt_outlined},
    {'name': 'by day', 'icon': Icons.calendar_today_outlined},
    {'name': 'by week', 'icon': Icons.calendar_month_sharp},
    {'name': 'by month', 'icon': Icons.calendar_month_outlined},
    {'name': 'by category', 'icon': Icons.grid_view_outlined},
    {'name': 'recurring', 'icon': Icons.repeat},
    {'name': 'upcoming', 'icon': Icons.update_outlined},
  ];

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
                Icons.search,
                color: colorScheme.onPrimary,
                size: AppFontSize.xl3,
              ),
            ),
            homeFilter(),
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

  PopupMenuButton<String> homeFilter() {
    final colorScheme = Theme.of(context).colorScheme;
    return PopupMenuButton<String>(
      constraints: const BoxConstraints(
        minWidth: 150,
      ),
      icon: SvgPicture.asset(
        AppAsset.filter,
        colorFilter: ColorFilter.mode(
          colorScheme.onPrimary,
          BlendMode.srcIn,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      offset: const Offset(0, 40),
      color: colorScheme.secondary,
      onSelected: (value) {
        setState(() {
          _selectedFilter = value;
        });
      },
      itemBuilder: (BuildContext context) => filterDisplayNames
          .map(
            (filter) => PopupMenuItem<String>(
              padding: EdgeInsets.zero,
              height: 28,
              value: filter['name'],
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          size: AppFontSize.lg,
                          filter['icon'],
                          color: colorScheme.onPrimary,
                        ),
                        const Gap(8),
                        Text(
                          filter['name'],
                          style: const TextStyle(
                            fontSize: AppFontSize.base,
                          ),
                        ),
                      ],
                    ),
                    if (_selectedFilter == filter['name'])
                      Icon(
                        size: AppFontSize.lg,
                        Icons.check,
                        color: colorScheme.onPrimary,
                      )
                  ],
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
