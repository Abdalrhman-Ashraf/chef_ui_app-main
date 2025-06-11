

// ignore_for_file: avoid_print

import 'dart:io';
import 'package:dio/dio.dart';
import '../model/add_meal.dart';

class ApiService {
  final Dio _dio = Dio(BaseOptions(
    baseUrl: 'https://mangamediaa.com/house-food/public/api/chef/',
    headers: {
      'Authorization': '287|rT11pZs4vWclXGPfhJdrbQAMlLHcJEjHwxNTEgv2c6b3fa0c', // استبدل بالتوكين
      'Accept': 'application/json',
    },
  ));

  Future<List<AddMeal>> getFoods() async {
    final res = await _dio.get('foods?page=2');
    if (res.statusCode == 200) {
      final list = res.data['data']['data'] as List;
      return list.map((e) => AddMeal.fromJson(e)).toList();
    }
    throw Exception('فشل تحميل الأكلات: ${res.statusCode}');
  }

Future<void> addFood(Map<String, dynamic> data, File? image) async {
  try {
    final formData = FormData.fromMap({
      ...data,
      if (image != null)
        'image': await MultipartFile.fromFile(
          image.path,
          filename: image.path.split('/').last,
        ),
    });

    final res = await _dio.post(
      'foods',
      data: formData,
      options: Options(
        headers: {
          'Authorization': '287|rT11pZs4vWclXGPfhJdrbQAMlLHcJEjHwxNTEgv2c6b3fa0c', // استبدلها بالتوكن الحقيقي
         
        },
      ),
    );

    if (res.statusCode != 200) {
      throw Exception('فشل إضافة الأكلة: ${res.statusCode}');
    }
  } catch (e) {
    print('خطأ في إضافة الأكلة: $e');
    rethrow;
  }
}


  Future<void> updateFood(int id, Map<String, dynamic> data, File? image) async {
    if (image != null) {
      data['image'] = await MultipartFile.fromFile(image.path, filename: image.path.split('/').last);
    }
    final res = await _dio.post('foods/$id', data: FormData.fromMap(data));
    if (res.statusCode != 200) {
      throw Exception('فشل تعديل الأكلة: ${res.statusCode}');
    }
  }

  Future<void> deleteFood(int id) async {
    final res = await _dio.delete('foods/$id');
    if (res.statusCode != 200) {
      throw Exception('فشل حذف الأكلة: ${res.statusCode}');
    }
  }
}
