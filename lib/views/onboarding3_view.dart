import 'package:flutter/material.dart';
import 'package:lady_driver/core/components/custom_botton.dart';
import 'package:lady_driver/core/constant/color_manger.dart';
import 'package:lady_driver/core/constant/image_manger.dart';
import 'package:lady_driver/views/create_an_account.dart';
import 'package:lady_driver/views/login_view.dart';

class Onboarding3View extends StatelessWidget {
  const Onboarding3View({super.key});

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
            //! تسجيل الدخول كعميل
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const LoginView();
                    },
                  ),
                );
              },
              child: const CustomBotton(
                borderColor: ColorManger.kPrimaryColor,
                textThemeColor: ColorManger.kWhite,
                text: 'تسجيل الدخول كعميل',
                color: ColorManger.kPrimaryColor,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            //! إنضمي كسائقة
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const CreateAnAccount();
                    },
                  ),
                );
              },
              child: const CustomBotton(
                  text: 'إنضمي كسائقة',
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
