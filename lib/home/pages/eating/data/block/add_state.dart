
// ignore_for_file: prefer_typing_uninitialized_variables

import '../model/add_meal.dart';

abstract class FoodState {}

class FoodInitial extends FoodState {}

class FoodLoading extends FoodState {}

class FoodLoaded extends FoodState {
  final List<AddMeal> foods;

  var foodList;
  FoodLoaded(this.foods);
}

class FoodError extends FoodState {
  final String error;
  FoodError(this.error);
}

