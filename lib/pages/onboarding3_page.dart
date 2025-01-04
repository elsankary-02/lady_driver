import 'package:flutter/material.dart';
import 'package:lady_driver/core/components/custom_botton.dart';
import 'package:lady_driver/core/constant/color_manger.dart';
import 'package:lady_driver/core/constant/image_manger.dart';
import 'package:lady_driver/pages/create_an_account_page.dart';
import 'package:lady_driver/pages/login_page.dart';

class Onboarding3Page extends StatelessWidget {
  const Onboarding3Page({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(
              height: 150,
            ),
            //! Image
            Center(
              child: Image.asset(
                width: 285,
                height: 285,
                ImageManger.kOndoarding3,
              ),
            ),
            const SizedBox(
              height: 121,
            ),
            Text(
              '👋 أهلا بك',
              style: textTheme.headlineLarge!
                  .copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 16,
            ),
            //! تسجيل الدخول
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const LoginPage();
                    },
                  ),
                );
              },
              child: const CustomBotton(
                borderColor: ColorManger.kPrimaryColor,
                textThemeColor: ColorManger.kWhite,
                text: 'تسجيل الدخول ',
                color: ColorManger.kPrimaryColor,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            //!  انشاء حساب
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const CreateAnAccountPage();
                    },
                  ),
                );
              },
              child: const CustomBotton(
                  text: 'انشاء حساب',
                  color: ColorManger.kWhite,
                  textThemeColor: ColorManger.kPrimaryColor,
                  borderColor: ColorManger.kPrimaryColor),
            )
          ],
        ),
      ),
    );
  }
}
