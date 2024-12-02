import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';
import 'package:personal_finance_manager/shared/components/transactions/transaction_history_section.dart';
import 'package:personal_finance_manager/shared/styles/color.dart';
import 'package:personal_finance_manager/shared/styles/font_size.dart';

void showSearchUI(BuildContext context) {
  final colorScheme = Theme.of(context).colorScheme;
  TextEditingController searchController = TextEditingController();

  showModalBottomSheet(
    useSafeArea: true,
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    isScrollControlled: true,
    builder: (context) {
      return Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: colorScheme.surface,
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      TextFormField(
                        controller: searchController,
                        cursorColor: colorScheme.onPrimary,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          fillColor: AppColor.inputBackground,
                          filled: true,
                          hintStyle: TextStyle(
                            color: colorScheme.tertiary,
                            fontSize: AppFontSize.base,
                            fontWeight: FontWeight.w500,
                          ),
                          hintText: 'Search entry by note',
                          prefixIcon: Icon(
                            Iconsax.search_normal_1,
                            color: colorScheme.onPrimary,
                            size: AppFontSize.lg,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: const EdgeInsets.only(
                            top: 0,
                            bottom: 0,
                            right: 16,
                          ),
                        ),
                      ),
                      if (searchController.text.trim().isNotEmpty)
                        IconButton(
                          padding: EdgeInsets.zero,
                          icon: Icon(
                            Icons.clear,
                            color: colorScheme.onPrimary,
                          ),
                          onPressed: () {
                            searchController.clear();
                          },
                        ),
                    ],
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Cancel',
                    style: TextStyle(
                      color: colorScheme.onPrimary,
                      fontSize: AppFontSize.base,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            const Gap(24),
            Expanded(
              child: ListView.builder(
                controller: ScrollController(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const TransactionHistorySection();
                },
              ),
            ),
          ],
        ),
      );
    },
  );
}
