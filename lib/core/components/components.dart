import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/common/app_icon_button.dart';
import 'package:redefine_social_app/core/common/app_text_widget.dart';
import 'package:redefine_social_app/core/constant/num_constants.dart';
import 'package:redefine_social_app/core/constant/string_utility.dart';
import 'package:redefine_social_app/core/router/route_name.dart';

loadAssetImage(
    {required String name, double? width, double? height, BoxFit? fit}) {
  return Image.asset(
    name,
    fit: fit ?? BoxFit.contain,
    width: width,
    height: height,
  );
}

BoxDecoration commonBoxDecoration(
    {Color? color,
    BoxBorder? border,
    BoxShape shape = BoxShape.rectangle,
    BorderRadiusGeometry? borderRadius,
    DecorationImage? image}) {
  return BoxDecoration(
      color: color,
      image: image,
      border: border,
      shape: shape,
      borderRadius: borderRadius);
}

commonButtonStyle({
  Color? backgroundColor,
  Color? foregroundColor,
  TextStyle? textStyle,
  Color? borderColor,
  double? width,
  double? borderRadius,
  BuildContext? context,
}) {
  return ElevatedButton.styleFrom(
    textStyle: textStyle,
    backgroundColor: backgroundColor ??
        (context != null ? Theme.of(context).colorScheme.primary : Colors.blue),
    foregroundColor: foregroundColor ??
        (context != null
            ? Theme.of(context).colorScheme.onPrimary
            : Colors.blue),
    disabledBackgroundColor: backgroundColor ?? Colors.blue,
    disabledForegroundColor: foregroundColor ?? Colors.blue,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(borderRadius ?? eight),
      side: BorderSide(color: borderColor ?? Colors.blue, width: width ?? 0.0),
    ),
    elevation: zero,
  );
}

TextStyle commonTextStyle(
    {Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    BuildContext? context}) {
  return TextStyle(
    color: color ??
        (context != null
            ? Theme.of(context).colorScheme.primary
            : Colors.black),
    fontSize: fontSize ?? 14.0,
    fontWeight: fontWeight ?? FontWeight.w500,
    fontFamily: fontTenorSans,
  );
}

commonBorderView({Color? borderColor, double? borderRadius}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(borderRadius ?? 4),
    borderSide: BorderSide(color: borderColor ?? Colors.grey),
  );
}

void showBasicAlert(BuildContext context) {
  final theme = Theme.of(context);

  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) {
      return CupertinoAlertDialog(
        title: Row(
          spacing: 10,
          children: [
            Icon(
              Icons.calendar_month_outlined,
              size: 36,
            ),
            Expanded(
                child: AppTextWidget(
              text: 'Sync Redefine account with calendar',
              textAlign: TextAlign.left,
              style: theme.textTheme.headlineMedium,
            ))
          ],
        ),
        content: AppTextWidget(
          text:
              "You have the option to sync your calendar to GamePlan so that event creators can see your availability and choose event times when you're free.",
          style: theme.textTheme.bodyMedium,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false), // No action
            child: Text('Sync later'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true), // Yes action
            child: Text(
              'Sync now',
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w700),
            ),
          ),
        ],
      );
    },
  ).then((confirmed) {
    if (confirmed != null && confirmed) {
      // User clicked "Yes"
      if (context.mounted) {
        Navigator.pushNamed(context, RouteName.exportEvent);
      }
    }
  });
}

void showCustomAlert(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Icon(Icons.warning, color: Colors.red, size: 50),
                  SizedBox(height: 16),
                  Text('Warning!',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                ],
              ),
              Text('This is a custom-styled alert dialog.'),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Close'),
              ),
            ],
          ),
        ),
      );
    },
  );
}

void showBottomsheetMenu(BuildContext context) {
  final textTheme = Theme.of(context).textTheme;

  showCupertinoModalPopup(
    context: context,
    builder: (context) {
      return CupertinoActionSheet(
        title: AppTextWidget(
          text: 'Export event to:',
          style: textTheme.headlineMedium,
        ),
        message: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                AppIconButton(iconName: outlookCalendar, onPressed: () {}),
                AppTextWidget(
                  text: 'Outlook Calendar',
                  style: textTheme.bodySmall,
                )
              ],
            ),
            Column(
              children: [
                AppIconButton(iconName: gogoleCalendar, onPressed: () {}),
                AppTextWidget(
                  text: 'Google Calendar',
                  style: textTheme.bodySmall,
                )
              ],
            )
          ],
        ),
        cancelButton: CupertinoActionSheetAction(
          isDefaultAction: true,
          child: AppTextWidget(
            text: 'CANCEL',
            style: textTheme.headlineMedium,
          ),
          onPressed: () {
            Navigator.pop(context, 'Cancel');
          },
        ),
      );
    },
  );
}
