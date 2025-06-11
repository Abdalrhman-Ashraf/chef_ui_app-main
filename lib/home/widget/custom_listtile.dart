// ignore_for_file: use_super_parameters

import 'package:chef_ui_app/core/constant/colors.dart';
import 'package:chef_ui_app/core/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomListTile extends StatelessWidget {
  final String leadingText1;
  final String leadingText2;
  final String trailingDate;
  final String trailingAmount;
  final String svgIconPath;
  final Color leadingText1Color;
  final Color leadingText2Color;

  const CustomListTile({
    Key? key,
    required this.leadingText1,
    required this.leadingText2,
    required this.trailingDate,
    required this.trailingAmount,
    required this.svgIconPath,
    required this.leadingText1Color,
    required this.leadingText2Color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: Appcolor.white_accent,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(12),
      child: ListTile(
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              leadingText1,
              style: getBodyTextStyle(
                context,
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: leadingText1Color,
              ),
            ),
            SizedBox(height: 8),
            Text(
              leadingText2,
              style: getBodyTextStyle(
                context,
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: leadingText2Color,
              ),
            ),
          ],
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(trailingDate, style: getBodyTextStyle(context)),
                SizedBox(width: 5),
                SvgPicture.asset(svgIconPath, height: 20, width: 20),
              ],
            ),
            SizedBox(height: 8),
            Text(
              trailingAmount,
              style: getBodyTextStyle(
                context,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
