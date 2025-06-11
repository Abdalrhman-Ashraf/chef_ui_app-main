// ignore_for_file: non_constant_identifier_names

import 'package:chef_ui_app/core/constant/colors.dart';
import 'package:chef_ui_app/core/utils/text_style.dart';
import 'package:chef_ui_app/home/widget/add_eating_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

Column empaty_eating(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,

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
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset('asset/icons/no order.svg', height: 320),
          Text('لا توجد اطعمة يمكنك اضافه اكلات جديدة!!'),
        ],
      ),

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
      SizedBox(height: 60),
    ],
  );
}
