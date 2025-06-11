// ignore_for_file: sort_child_properties_last, unnecessary_string_interpolations

import 'package:chef_ui_app/core/constant/colors.dart';
import 'package:chef_ui_app/core/utils/text_style.dart';
import 'package:flutter/material.dart';

class OrderCardSecondary extends StatelessWidget {
  final String name;
  final String item;
  final String quantity;
  final String price;
  final String image;

  const OrderCardSecondary({
    super.key,
    required this.name,
    required this.item,
    required this.quantity,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset('asset/solar_user.png', fit: BoxFit.contain),
                    SizedBox(width: 3),
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "الاجمالي",
                      style: getBodyTextStyle(
                        context,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '123ج م',
                      style: getBodyTextStyle(
                        context,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(image, height: 70, width: 50),
                    SizedBox(width: 5),
                    Text(
                      item,
                      style: getBodyTextStyle(
                        context,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          'الكمية:',
                          style: getBodyTextStyle(
                            context,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(quantity),
                      ],
                    ),
                    SizedBox(width: 12),
                    Column(
                      children: [
                        Text(
                          'السعر',
                          style: getBodyTextStyle(
                            context,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          price,
                          style: getBodyTextStyle(
                            context,

                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Divider(height: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'التحضير',
                    style: TextStyle(
                      fontSize: 20,
                      color: Appcolor.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Appcolor.primary),
                    padding: WidgetStatePropertyAll(
                      EdgeInsets.symmetric(horizontal: 125),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
