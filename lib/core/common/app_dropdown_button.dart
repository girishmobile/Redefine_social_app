import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/colors/color.dart';
import 'package:redefine_social_app/core/common/app_text_widget.dart';
import 'package:redefine_social_app/core/constant/num_constants.dart';

class AppDropdownButton extends StatelessWidget {
  const AppDropdownButton({
    super.key,
    required this.items,
    this.selectedValue,
    this.onChanged,
    this.hintText,
    this.width,
  });
  final List<String> items;
  final String? selectedValue;
  final Function(String?)? onChanged;
  final String? hintText;
  final double? width;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: width,
      child: DropdownButton2<String>(
          value: selectedValue,
          hint: AppTextWidget(
            text: hintText,
          ),
          items: items.map((item) {
            return DropdownMenuItem<String>(
              value: item,
              child: AppTextWidget(
                text: item,
              ),
            );
          }).toList(),
          onChanged: onChanged,
          underline: SizedBox.shrink(),
          buttonStyleData: ButtonStyleData(
            width: width,
            padding: EdgeInsets.symmetric(horizontal: eight),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(four),
              border: Border.all(
                color: theme.colorScheme.primary.withValues(alpha: 0.3),
              ),
              color: theme.colorScheme.surface,
            ),
          ),
          dropdownStyleData: DropdownStyleData(
            maxHeight: 250,
            offset: Offset(0, -1),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4), color: colorHeader),
            elevation: 5,
          ),
          iconStyleData: IconStyleData(
            icon: Icon(Icons.arrow_drop_down, color: theme.colorScheme.primary),
          )),
    );
  }
}
