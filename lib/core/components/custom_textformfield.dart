import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lady_driver/core/constant/color_manger.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.suffixIcon,
      required this.hintText,
      required this.controller,
      this.validator});
  final String suffixIcon;
  final String hintText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w400),
        prefixIcon: UnconstrainedBox(child: SvgPicture.asset(suffixIcon)),
        border: outlineInputBorder(ColorManger.kBorderColor),
        enabledBorder: outlineInputBorder(ColorManger.kBorderColor),
        focusedBorder: outlineInputBorder(ColorManger.kBorderColor),
      ),
    );
  }

  outlineInputBorder(Color borderColor) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        width: 1.5,
        color: borderColor,
      ),
    );
  }
}
