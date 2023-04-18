import 'package:bmi_calculator/constants/colors/app_colors.dart';
import 'package:bmi_calculator/pages/result_page.dart';
import 'package:bmi_calculator/widgets/weight_age_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_container.dart';

class HomeHage extends StatefulWidget {
  const HomeHage({super.key});

  @override
  State<HomeHage> createState() => _HomeHageState();
}

class _HomeHageState extends State<HomeHage> {
  double height = 120;
  int weight = 50;
  int age = 30;

  Color mainColor = AppColors.inactiveColor;
  Color femaleColor = AppColors.inactiveColor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Material(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xff211834),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    CustomContainerWidget(
                      text: 'male ',
                      icon: Icons.male,
                      onTap: () {
                        setState(() {
                          mainColor = AppColors.activeColor;
                          femaleColor = AppColors.inactiveColor;
                        });
                      },
                      color: mainColor,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CustomContainerWidget(
                      onTap: () {
                        setState(() {
                          femaleColor = AppColors.activeColor;
                          mainColor = AppColors.inactiveColor;
                        });
                      },
                      color: femaleColor,
                      text: 'female ',
                      icon: Icons.female,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: size.height * 0.25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.mainColor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          'HEIGHT',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white.withOpacity(0.6),
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        color: Color(0xff0A001F),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  height.toStringAsFixed(0),
                                  style: TextStyle(
                                      fontSize: 45,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'cm',
                                  style: TextStyle(
                                      fontSize: 35,
                                      color: Colors.white.withOpacity(0.8),
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                            Slider(
                              inactiveColor: Colors.grey,
                              activeColor: Colors.red,
                              thumbColor: Colors.blue,
                              max: 220,
                              min: 50,
                              value: height,
                              onChanged: (adamozgortuu) {
                                setState(() {
                                  height = adamozgortuu;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    WeightAgeWidget(
                      tag1: '1',
                      tag2: '2',
                      ntext: 'Weight',
                      weight: weight,
                      minus: () {
                        setState(() {
                          weight--;
                        });
                      },
                      plus: () {
                        setState(() {
                          weight++;
                        });
                      },
                      text: '',
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    WeightAgeWidget(
                      tag1: '3',
                      tag2: '4',
                      ntext: 'Age',
                      text: '',
                      weight: age,
                      minus: () {
                        setState(() {
                          age--;
                        });
                      },
                      plus: () {
                        setState(() {
                          age++;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          bottomNavigationBar: CalculateWidget(
            text: 'Calculate',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class CalculateWidget extends StatelessWidget {
  const CalculateWidget({
    super.key,
    required this.onTap,
    required this.text,
  });

  final Function()? onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.cyan,
        height: MediaQuery.of(context).size.height * 0.07,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.white,
              letterSpacing: 2,
            ),
          ),
        ),
      ),
    );
  }
}
