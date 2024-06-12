import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mediezy_lab_scan/presentation/core/app_colors.dart';
import 'package:mediezy_lab_scan/presentation/core/text_style.dart';

class GeneralServices {
  static GeneralServices instance = GeneralServices();

  //* to show toast
  showToastMessage(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: kMainColor,
        textColor: kCardColor,
        fontSize: 16.sp);
  }

  //* app close dialogue
   appCloseDialogue(
      BuildContext context, String title, void Function()? yesFunction) {
    Platform.isIOS
        ? showCupertinoDialog(
            barrierDismissible: true,
            context: context,
            builder: ((context) {
              return CupertinoAlertDialog(
                content: Text(
                  title,
                  style: black16B600
                ),
                actions: [
                  TextButton(
                    child: Text(
                      "No",
                      style: black14B500
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  TextButton(
                    onPressed: yesFunction,
                    child: Text(
                      "Yes",
                      style:red16B600
                    ),
                  )
                ],
              );
            }),
          )
        : showDialog(
            barrierDismissible: true,
            context: context,
            builder: ((context) {
              return AlertDialog(
                backgroundColor: Theme.of(context).cardColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
                content: Text(
                  title,
                  style:black16B600
                ),
                actions: [
                  TextButton(
                    child: Text(
                      "No",
                      style: black14B500
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  TextButton(
                    onPressed: yesFunction,
                    child: Text(
                      "Yes",
                      style: red16B600
                    ),
                  )
                ],
              );
            }),
          );
  }
}
