part of 'fetchcategories_cubit.dart';

@immutable
abstract class FetchCategoriesState {}

class FetchCategoriesInitial extends FetchCategoriesState {}
class LoadingCategoryState extends FetchCategoriesState {}
class FetchCategoryState extends FetchCategoriesState {
  FetchCategoryState({required this.categories});
  List<String> categories;

}
class ErrorCategoriesState extends FetchCategoriesState {}
