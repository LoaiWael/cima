import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:cinezone_app/core/theme/app_colors.dart';
import 'package:cinezone_app/core/theme/text_styles.dart';
import 'package:flutter/material.dart';

void showAwesomeDialog(
  String desc,
  String title,
  BuildContext context, {
  DialogType? dialogType,
  void Function()? btnOkOnPress,
}) {
  AwesomeDialog(
    context: context,
    dialogType: dialogType ?? DialogType.error,
    animType: AnimType.rightSlide,
    title: title,
    desc: desc,
    btnOkText: 'OK',
    btnOkColor: AppColors.yellowcolor,
    showCloseIcon: false,
    btnOkOnPress: btnOkOnPress ?? () {},
  ).show();
}

void showError({
  required Color backgroundColor,
  required String errorMessage,
  required BuildContext context,
  required String title,
  void Function()? onPressedok,
  required String textOk,
}) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: backgroundColor,
        title: Text(title),
        content: Text(
          errorMessage,
          style: Styles.textStyle16.copyWith(
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Cancel',
              style: Styles.textStyle16.copyWith(
                color: AppColors.yellowcolor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          TextButton(
            onPressed: onPressedok,
            child: Text(
              textOk,
              style: Styles.textStyle16.copyWith(
                color: AppColors.yellowcolor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      );
    },
  );
}

String getErrorMessage(dynamic error) {
  return 'An unexpected error occurred. Please try again.';
}
