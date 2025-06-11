
// ignore_for_file: use_key_in_widget_constructors, dead_code, non_constant_identifier_names
import 'package:chef_ui_app/home/pages/eating/data/block/add_block.dart';
import 'package:chef_ui_app/home/pages/eating/data/block/add_event.dart';
import 'package:chef_ui_app/home/pages/eating/data/block/add_state.dart';
import 'package:chef_ui_app/home/widget/add_eating_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'details_eating.dart';

class EatingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("قائمة الأكلات")),
      body: BlocBuilder<FoodBloc, FoodState>(
        builder: (context, state) {
          if (state is FoodLoading) {
            return Center(child: CircularProgressIndicator());
          }
          if (state is FoodLoaded) {
            final foods = state.foods;
            return ListView.builder(
              itemCount: foods.length,
              itemBuilder: (_, i) {
                final f = foods[i];
                return ListTile(
                  leading: f.image != null
                      ? Image.network(f.image!, width: 50, height: 50, fit: BoxFit.cover)
                      : Icon(Icons.fastfood),
                  title: Text(f.name ?? ''),
                  subtitle: Text(f.price ?? ''),
                  trailing: SizedBox(
                    width: 96,
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (_) => showAddDialog(context),
                            );
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () => context.read<FoodBloc>().add(DeleteFoodEvent(i)),
                        ),
                      ],
                    ),
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => DetailsEating(meal: f)),
                  ),
                );
              },
            );
          }
          if (state is FoodError) {
            return Center(child: Text("حدث خطأ: ${state.error}"));
          
            
          }
          return Center(child: Text("اضغط + للإضافة"));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(context: context, builder: (_) => showAddDialog(context));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}





