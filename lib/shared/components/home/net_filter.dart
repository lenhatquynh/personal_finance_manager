import 'package:animated_number_switcher/animated_number_switcher.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:personal_finance_manager/shared/styles/color.dart';
import 'package:personal_finance_manager/shared/styles/font_size.dart';
import 'package:personal_finance_manager/shared/styles/radius.dart';

class NetFilter extends StatefulWidget {
  const NetFilter({super.key});

  @override
  State<NetFilter> createState() => _NetFilterState();
}

class _NetFilterState extends State<NetFilter> {
  String _selectedFilter = 'today'; // Default filter value

  final List<String> filterDisplayNames = [
    'today',
    'this week',
    'this month',
    'this year',
    'all time',
  ];

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Net total",
              style: TextStyle(
                color: colorScheme.onPrimary,
                fontSize: AppFontSize.base,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Gap(8),
            PopupMenuButton<String>(
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
                      height: 30,
                      value: filter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            filter,
                            style: const TextStyle(
                              fontSize: AppFontSize.base,
                            ),
                          ),
                          if (_selectedFilter == filter)
                            Icon(
                              size: AppFontSize.lg,
                              Icons.check,
                              color: colorScheme.onPrimary,
                            )
                        ],
                      ),
                    ),
                  )
                  .toList(),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: colorScheme.tertiary,
                    width: 0.5,
                  ),
                  borderRadius: const BorderRadius.all(AppRadius.xl4),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      _selectedFilter,
                      style: TextStyle(
                        color: colorScheme.onPrimary,
                        fontSize: AppFontSize.base,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Icon(Icons.arrow_drop_down),
                  ],
                ),
              ),
            )
          ],
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
                fontSize: AppFontSize.xl2,
                fontWeight: FontWeight.w600,
              ),
            ),
            AnimatedNumberSwitcher.text(
              "12.845,20",
              style: TextStyle(
                color: colorScheme.onPrimary,
                fontSize: AppFontSize.xl4,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '+8874.00',
              style: TextStyle(
                color: AppColor.success,
                fontSize: AppFontSize.xl,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Gap(8),
            Text(
              '|',
              style: TextStyle(
                color: colorScheme.tertiary,
                fontSize: AppFontSize.xl,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Gap(8),
            const Text(
              '-1233.9',
              style: TextStyle(
                color: AppColor.error,
                fontSize: AppFontSize.xl,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
