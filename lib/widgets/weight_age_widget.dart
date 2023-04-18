import 'package:flutter/material.dart';

import '../constants/colors/app_colors.dart';

class WeightAgeWidget extends StatelessWidget {
  const WeightAgeWidget({
    super.key,
    required this.ntext,
    required this.weight,
    required this.minus,
    required this.plus,
    required String text,
    required this.tag1,
    required this.tag2,
  });
  final String ntext;
  final int weight;
  final void Function() minus;
  final void Function() plus;
  final Object tag1;
  final Object tag2;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Expanded(
      child: Container(
        height: size.height * 0.27,
        decoration: BoxDecoration(
          color: AppColors.mainColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(children: [
          Text(
            ntext.toUpperCase(),
            style: TextStyle(
                fontSize: 35,
                color: Colors.white.withOpacity(0.8),
                fontWeight: FontWeight.w500),
          ),
          Text(
            weight.toString(),
            style: TextStyle(
                fontSize: 35, color: Colors.white, fontWeight: FontWeight.w500),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                heroTag: tag1,
                onPressed: minus,
                child: Icon(
                  Icons.remove,
                  size: 50,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              FloatingActionButton(
                heroTag: tag2,
                onPressed: plus,
                child: Icon(
                  Icons.add,
                  size: 40,
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
