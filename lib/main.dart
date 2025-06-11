// ignore_for_file: unused_import



import 'package:chef_ui_app/home/pages/eating/data/block/add_block.dart';
import 'package:chef_ui_app/home/pages/eating/data/block/add_event.dart';
import 'package:chef_ui_app/home/pages/eating/data/repo/add_food_repo.dart';
import 'package:chef_ui_app/home/pages/eating/presentaion/screen/eating.dart';
import 'package:chef_ui_app/home/widget/empty_eating.dart';
import 'package:chef_ui_app/home/pages/eating/presentaion/screen/details_eating.dart';


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() {
  runApp(const MyApp());
 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FoodBloc(ApiService())..add(FetchFoodsEvent()),
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EatingView(),
      builder: (context, child) {
        return Directionality(textDirection: TextDirection.rtl, child: child!);
      },
    ));
  }
}
