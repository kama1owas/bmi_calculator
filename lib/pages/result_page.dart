import 'package:bmi_calculator/constants/colors/app_colors.dart';
import 'package:bmi_calculator/constants/style/app_text_styles.dart';
import 'package:bmi_calculator/constants/text/app_text.dart';

import 'package:bmi_calculator/pages/home_page.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.secontoryColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                Text(
                  AppText.result,
                  style: AppTextStyles.white35w400,
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.mainColor,
                ),
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width * 0.7,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Нормалдуу',
                      style: AppTextStyles.white30w500,
                    ),
                    Text(
                      '24.2',
                      style: AppTextStyles.white70w800,
                    ),
                    Text(
                      'Сиздин дене салмагыңыз нормалдуу. Азаматсыз! ',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.white20w300,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: CalculateWidget(
          text: 'Re-Calculate',
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
