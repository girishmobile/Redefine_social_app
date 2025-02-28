import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/common/app_text_widget.dart';
import 'package:redefine_social_app/core/constant/num_constants.dart';

class AppDropdownButton extends StatelessWidget {
  const AppDropdownButton(
      {super.key,
      required this.items,
      this.selectedValue,
      this.onChanged,
      this.hintText});
  final List<String> items;
  final String? selectedValue;
  final Function(String?)? onChanged;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DropdownButton2<String>(
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
          padding: EdgeInsets.symmetric(horizontal: eight),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(eight),
            border: Border.all(
              color: theme.colorScheme.primary.withValues(alpha: 0.3),
            ),
            color: theme.colorScheme.surface,
          ),
        ),
        dropdownStyleData: DropdownStyleData(
          // maxHeight: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            //color: Colors.amber,
          ),
          elevation: 5,
        ),
        iconStyleData: IconStyleData(
          icon: Icon(Icons.arrow_drop_down, color: theme.colorScheme.primary),
        ));
  }
}
