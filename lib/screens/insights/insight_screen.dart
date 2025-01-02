import 'package:animated_number_switcher/animated_number_switcher.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:personal_finance_manager/shared/components/common/normal_filter.dart';
import 'package:personal_finance_manager/shared/styles/color.dart';
import 'package:personal_finance_manager/shared/styles/font_size.dart';

class InsightScreen extends StatefulWidget {
  const InsightScreen({super.key, required this.title});

  final String title;

  @override
  State<InsightScreen> createState() => _InsightScreenState();
}

class _InsightScreenState extends State<InsightScreen> {
  String _selectedFilter = 'week';

  final List<String> filterDisplayNames = [
    'week',
    'month',
    'year',
  ];

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AppBar(
        backgroundColor: colorScheme.surface,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Insights",
                style: TextStyle(
                  color: colorScheme.onPrimary,
                  fontSize: AppFontSize.xl3,
                  fontWeight: FontWeight.w500,
                ),
              ),
              NormalFilter(
                filterDisplayNames: filterDisplayNames,
                selectedFilter: _selectedFilter,
                onSelected: (value) {
                  setState(() {
                    _selectedFilter = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: ListView(
          children: [
            const Gap(10),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '15 DEC - 14 JAN',
                        style: TextStyle(
                          color: colorScheme.tertiary,
                          fontSize: AppFontSize.base,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.ideographic,
                        children: [
                          Text(
                            '+đ',
                            style: TextStyle(
                              color: colorScheme.tertiary,
                              fontSize: AppFontSize.base,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          AnimatedNumberSwitcher.text(
                            "240",
                            style: TextStyle(
                              color: colorScheme.onPrimary,
                              fontSize: AppFontSize.xl,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 8),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 1,
                            ),
                            decoration: BoxDecoration(
                              color: AppColor.success.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Text(
                              '+5%',
                              style: TextStyle(
                                color: AppColor.success,
                                fontSize: AppFontSize.base,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'SPENT/DAY',
                        style: TextStyle(
                          color: colorScheme.tertiary,
                          fontSize: AppFontSize.base,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.ideographic,
                        children: [
                          Text(
                            'đ',
                            style: TextStyle(
                              color: colorScheme.tertiary,
                              fontSize: AppFontSize.base,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          AnimatedNumberSwitcher.text(
                            "29,47",
                            style: TextStyle(
                              color: colorScheme.onPrimary,
                              fontSize: AppFontSize.xl,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Gap(10),
            const Expanded(
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
