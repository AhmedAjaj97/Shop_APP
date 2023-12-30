part of 'fetchproducts_cubit.dart';

@immutable
abstract class FetchProductsState {}

class FetchProductsInitial extends FetchProductsState {}
class FetchProductsState1 extends FetchProductsState {
  FetchProductsState1({required this.products});
  List<Product_Model> products;
}
class LoadingProductsState extends FetchProductsState {}
class ErrorFetchProductsState extends FetchProductsState {}
class FetchSearchState extends FetchProductsState {
  FetchSearchState({required this.search});
  List<Product_Model> search;
}





