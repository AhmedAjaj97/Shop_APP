import 'package:flutter/foundation.dart';
import 'package:shoping_app/features/home/data/model/products_model.dart';

abstract class HomeRepo{
Future<List<Product_Model>>fetchProducts();
Future<List<Product_Model>>searchProducts();
Future<List<String>>Category();
Future<List<Product_Model>>ItemsofCategory({required String category});


}