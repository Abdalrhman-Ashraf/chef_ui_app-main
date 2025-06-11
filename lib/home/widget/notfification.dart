import 'package:chef_ui_app/core/constant/colors.dart';


import 'package:flutter/material.dart';

AppBar notification(BuildContext context) {
  return AppBar(
    backgroundColor: Appcolor.white,
    leading: IconButton(
      onPressed: () {
       // push(context, NotificationPage());
      },
      icon: Icon(Icons.notifications_active),
    ),
  );
}
