import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:personal_finance_manager/shared/styles/color.dart';
import 'package:personal_finance_manager/shared/styles/font_size.dart';
import 'package:personal_finance_manager/shared/styles/radius.dart';

class Transaction extends StatefulWidget {
  const Transaction({super.key});

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: AppColor.grayDark,
                    borderRadius: BorderRadius.all(AppRadius.md),
                  ),
                  child: const Center(
                    child: Text(
                      "🍔",
                      style: TextStyle(fontSize: AppFontSize.xl),
                    ),
                  ),
                ),
                const Gap(8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Food',
                      style: TextStyle(
                        color: colorScheme.onPrimary,
                        fontSize: AppFontSize.base,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '4:55 PM',
                      style: TextStyle(
                        color: colorScheme.tertiary,
                        fontSize: AppFontSize.base,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const Text(
            '+đ85.234',
            style: TextStyle(
              color: AppColor.success,
              fontSize: AppFontSize.base,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
