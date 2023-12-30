part of 'fetchcategories_cubit.dart';

@immutable
abstract class FetchCategoriesState {}

class FetchCategoriesInitial extends FetchCategoriesState {}
class LoadingCategoryState extends FetchCategoriesState {}
class LoadingProductsOfCateState extends FetchCategoriesState {}
class FetchCateState extends FetchCategoriesState {
  FetchCateState({required this.products1});
  List<Product_Model> products1;

}
class ErrorState extends FetchCategoriesState {}
