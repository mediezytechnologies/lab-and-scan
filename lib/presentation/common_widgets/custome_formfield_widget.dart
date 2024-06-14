// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:mediezy_lab_scan/presentation/core/app_colors.dart';
import 'package:mediezy_lab_scan/presentation/core/text_style.dart';

class CustomeFormFieldWidget extends StatelessWidget {
  CustomeFormFieldWidget(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.textInputType,
      required this.textInputAction,
      this.validator,
      this.preIcon,
      this.obscureText = false,
      this.hideText = false,
      this.maxLine = 1,
      this.maxLength,
      this.onPressed,
      this.autoFocus= false
      });

  final TextEditingController controller;
  final String hintText;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  FormFieldValidator? validator;
  bool hideText;
  bool obscureText;
  IconData? preIcon;
  int? maxLine;
  int? maxLength;
  bool autoFocus;
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return TextFormField(
      autofocus: autoFocus,
      style: black12B500,
      maxLines: maxLine,
      maxLength: maxLength,
      cursorColor: kMainColor,
      controller: controller,
      keyboardType: textInputType,
      textInputAction: TextInputAction.next,
      validator: validator,
      obscureText: obscureText,
      decoration: InputDecoration(
        counterText: "",
        prefixIcon:preIcon != null
            ? Icon(
                preIcon,
                color: kMainColor,
                size: 20.sp,
              )
            : null,
        suffixIcon: hideText
            ? GestureDetector(
                onTap: onPressed,
                child: obscureText
                    ? Icon(
                        IconlyLight.hide,
                        color: kMainColor,
                      )
                    : Icon(
                        IconlyLight.show,
                        color: kMainColor,
                      ),
              )
            : const SizedBox(),
        hintStyle: grey12B500,
        hintText: hintText,
        filled: true,
        fillColor: kCardColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide.none,
        ),
        contentPadding: EdgeInsets.symmetric(
            horizontal: width * .02, vertical: height * .011),
      ),
    );
  }
}
