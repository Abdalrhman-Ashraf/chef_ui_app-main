
import 'package:chef_ui_app/home/pages/eating/data/block/add_event.dart';
import 'package:chef_ui_app/home/pages/eating/data/block/add_state.dart';
import 'package:chef_ui_app/home/pages/eating/data/repo/add_food_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class FoodBloc extends Bloc<FoodEvent, FoodState> {
  final ApiService apiService;
  FoodBloc(this.apiService) : super(FoodInitial()) {
    on<FetchFoodsEvent>((e, emit) async {
      emit(FoodLoading());
      try {
        final foods = await apiService.getFoods();
        emit(FoodLoaded(foods));
      } catch (ex) {
        emit(FoodError(ex.toString()));
      }
    });

    on<AddFoodEvent>((e, emit) async {
      try {
        await apiService.addFood(e.data, e.image);
        add(FetchFoodsEvent());
      } catch (ex) {
        emit(FoodError(ex.toString()));
      }
    });

    on<UpdateFoodEvent>((e, emit) async {
      try {
        await apiService.updateFood(e.id, e.data, e.image);
        add(FetchFoodsEvent());
      } catch (ex) {
        emit(FoodError(ex.toString()));
      }
    });

    on<DeleteFoodEvent>((e, emit) async {
      try {
        await apiService.deleteFood(e.id);
        add(FetchFoodsEvent());
      } catch (ex) {
        emit(FoodError(ex.toString()));
      }
    });
  }
}
