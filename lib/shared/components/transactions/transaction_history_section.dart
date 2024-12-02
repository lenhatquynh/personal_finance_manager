import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:personal_finance_manager/shared/components/transactions/transaction.dart';
import 'package:personal_finance_manager/shared/styles/font_size.dart';

class TransactionHistorySection extends StatefulWidget {
  const TransactionHistorySection({super.key});

  @override
  State<TransactionHistorySection> createState() => _TransactionHistorySectionState();
}

class _TransactionHistorySectionState extends State<TransactionHistorySection> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: colorScheme.tertiary,
                width: 0.5,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'TODAY',
                style: TextStyle(
                  color: colorScheme.tertiary,
                  fontSize: AppFontSize.lg,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                '+đ81.223',
                style: TextStyle(
                  color: colorScheme.tertiary,
                  fontSize: AppFontSize.lg,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        const Transaction(),
        const Transaction(),
        const Gap(24),
      ],
    );
  }
}
