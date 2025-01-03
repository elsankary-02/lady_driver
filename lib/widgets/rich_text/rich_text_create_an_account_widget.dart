import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lady_driver/core/constant/color_manger.dart';
import 'package:lady_driver/pages/login_page.dart';

class RichTextCreateAnAccountWidget extends StatelessWidget {
  const RichTextCreateAnAccountWidget({super.key, required this.textTheme});
  final TextTheme textTheme;
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w400),
        children: [
          //! لديك حساب بالفعل ؟
          TextSpan(
            text: 'لديك حساب بالفعل؟ ',
            style: textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w400),
          ),
          //! تسجيل الدخول
          TextSpan(
            text: 'تسجيل الدخول',
            style: textTheme.titleSmall!.copyWith(
                fontWeight: FontWeight.w400, color: ColorManger.kPrimaryColor),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const LoginPage();
                    },
                  ),
                );
              },
          ),
        ],
      ),
    );
  }
}
