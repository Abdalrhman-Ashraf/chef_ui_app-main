import 'package:chef_ui_app/core/constant/colors.dart';
import 'package:chef_ui_app/core/utils/text_style.dart';
import 'package:chef_ui_app/home/pages/eating/data/model/add_meal.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DetailsEating extends StatefulWidget {
  const DetailsEating({super.key, required AddMeal meal});

  @override
  State<DetailsEating> createState() => _DetailsEatingState();
}

class _DetailsEatingState extends State<DetailsEating> {
  @override
  Widget build(BuildContext context) {
    // Get full screen height

    return Scaffold(
      body: Column(
        children: [
          // Top Image
          Image.asset(
            'asset/Rectangle 5.png',
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
          ),

          // White container with info taking full remaining height
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16),

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title + Price
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'بيتزا فراخ باربكيو',
                        style: getBodyTextStyle(
                          context,
                          color: Appcolor.black,
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        '150 جم',
                        style: getBodyTextStyle(context, color: Appcolor.black),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),

                  // Prep Time

                  // Rating Row
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          '((وقت التحضير : 20 دقيقة))',
                          style: getBodyTextStyle(
                            context,
                            color: Appcolor.primary,
                          ),
                        ),
                      ),
                      Gap(30),
                      Text('(89 مراجعة)', style: TextStyle(fontSize: 14)),

                      Row(
                        children: List.generate(
                          5,
                          (index) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 20,
                          ),
                        ),
                      ),
                      const SizedBox(width: 6),
                      const Text(
                        '4.5',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Gap(10),
                      Text(
                        '(قسم البيتزا)',
                        style: getBodyTextStyle(
                          context,
                          fontWeight: FontWeight.bold,
                          fontSize: 33,
                          color: Appcolor.primary,
                        ),
                      ),
                      Gap(10),
                      Text(
                        'مزيج شهي من صلصة الباربكيو الغنية، قطع الدجاج المشوي الطري، جبنة الموزاريلا الذائبة، والبصل الأحمر الطازج، مع لمسة من الكزبرة لتعزيز النكهة. تجربة فريدة لعشاق الطعم المدخن والمميز',
                        style: getBodyTextStyle(context, fontSize: 22),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
