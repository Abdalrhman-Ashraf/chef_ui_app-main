

import 'dart:io';

abstract class FoodEvent {}

class FetchFoodsEvent extends FoodEvent {}

class AddFoodEvent extends FoodEvent {
  final Map<String, dynamic> data;
  final File? image;
  AddFoodEvent(this.data, this.image);
}

class UpdateFoodEvent extends FoodEvent {
  final int id;
  final Map<String, dynamic> data;
  final File? image;
  UpdateFoodEvent(this.id, this.data, this.image);
}

class DeleteFoodEvent extends FoodEvent {
  final int id;
  DeleteFoodEvent(this.id);
}
