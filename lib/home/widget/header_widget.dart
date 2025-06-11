import 'package:chef_ui_app/core/constant/colors.dart';
import 'package:chef_ui_app/core/utils/text_style.dart';
import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Appcolor.homebaner,
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('asset/chef.png'),
            radius: 35,
            backgroundColor: Colors.white,
            child: Icon(Icons.person, color: Colors.black),
          ),
          Text(
            'الشيف حسين',
            style: getBodyTextStyle(
              context,
              color: Appcolor.primary,
              fontSize: 22,
            ),
          ),
          Text(
            'شيف محترف بخبرة واسعة في تقديم أشهى الأطباق بنكهات مميزة ولمسة إبداعية. أحرص على استخدام أجود المكونات لضمان تجربة طعام فريدة. استمتع معي برحلة لذيذة تأخذك إلى عالم من النكهات الأصيلة',
            style: TextStyle(color: Appcolor.white, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
