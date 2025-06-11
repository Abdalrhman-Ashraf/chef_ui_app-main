// ignore_for_file: non_constant_identifier_names

import 'package:chef_ui_app/core/constant/colors.dart';
import 'package:chef_ui_app/core/utils/text_style.dart';
import 'package:chef_ui_app/home/widget/add_eating_dialog.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

Column list_eating_item(BuildContext context, dynamic dinners) {
  return Column(
    children: [
      Text(
        'اكلا تــي',
        style: getBodyTextStyle(
          context,
          fontSize: 33,
          fontWeight: FontWeight.bold,
          color: Appcolor.primary,
        ),
      ),
      Gap(10),
      Expanded(
        child: ListView.builder(
          itemCount: dinners.length,
          itemBuilder: (context, index) {
            final dinner = dinners[index];
            return Container(
              decoration: BoxDecoration(
                border: Border.all(color: Appcolor.primary, width: 1),
                borderRadius: BorderRadius.circular(22),
                color: Appcolor.white_accent,
              ),
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    // Dish image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        dinner['image'],
                        width: 120,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 6),
                    // Name and stars
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            dinner['name'],
                            style: getBodyTextStyle(
                              context,
                              fontSize: 18,
                              color: Appcolor.primary,
                            ),
                          ),
                          Row(
                            children: List.generate(
                              5,
                              (starIndex) => Icon(
                                starIndex < dinner['stars']
                                    ? Icons.star
                                    : Icons.star_border,
                                color: Colors.amber,
                                size: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    // Left side: Icons + price
                    Column(
                      children: [
                        Row(
                          children: [
                            IconButton(
                              icon: Icon(Icons.delete, color: Colors.red),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(Icons.edit, color: Colors.blue),
                              onPressed: () {},
                            ),
                          ],
                        ),

                        SizedBox(height: 4),
                        Text(
                          dinner['price'],
                          style: getBodyTextStyle(
                            context,
                            fontSize: 25,
                            color: Appcolor.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      Gap(10),
      InkWell(
        onTap: () {
         showAddDialog(context);
        },
        child: Container(
          width: 222,
          padding: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: Appcolor.primary,
            borderRadius: BorderRadius.circular(22),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Appcolor.white,
                  borderRadius: BorderRadius.circular(22),
                ),
                padding: EdgeInsets.all(2),
                child: Icon(Icons.add),
              ),
              Gap(10),
              Text(
                'اضافة اكله جديدة',
                style: getBodyTextStyle(context, color: Appcolor.white),
              ),
            ],
          ),
        ),
      ),

      Gap(22),
    ],
  );
}
