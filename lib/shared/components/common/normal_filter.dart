import 'package:flutter/material.dart';
import 'package:personal_finance_manager/shared/styles/font_size.dart';

class NormalFilter extends StatefulWidget {
  const NormalFilter({
    super.key,
    required this.filterDisplayNames,
    required this.selectedFilter,
    required this.onSelected,
  });

  final List<String> filterDisplayNames;
  final String selectedFilter;
  final Function(String) onSelected;

  @override
  State<NormalFilter> createState() => _NormalFilterState();
}

class _NormalFilterState extends State<NormalFilter> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: Colors.transparent,
      ),
      child: PopupMenuButton<String>(
        constraints: const BoxConstraints(
          minWidth: 150,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        offset: const Offset(0, 40),
        color: colorScheme.secondary,
        onSelected: (value) {
          widget.onSelected(value);
        },
        itemBuilder: (BuildContext context) => widget.filterDisplayNames
            .map(
              (filter) => PopupMenuItem<String>(
                padding: EdgeInsets.zero,
                height: 28,
                value: filter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        filter,
                        style: const TextStyle(
                          fontSize: AppFontSize.base,
                        ),
                      ),
                      if (widget.selectedFilter == filter)
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
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(
              color: colorScheme.tertiary,
              width: 0.5,
            ),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 4,
            ),
            child: Row(
              children: [
                Text(
                  widget.selectedFilter,
                  style: TextStyle(
                    color: colorScheme.onPrimary,
                    fontSize: AppFontSize.base,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Icon(
                  size: AppFontSize.lg,
                  Icons.expand_more,
                  color: colorScheme.onPrimary,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
