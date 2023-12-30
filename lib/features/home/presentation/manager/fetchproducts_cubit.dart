import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shoping_app/features/home/data/model/products_model.dart';
import 'package:shoping_app/features/home/data/repo/repo_imp.dart';

part 'fetchproducts_state.dart';

class FetchProductsCubit extends Cubit<FetchProductsState> {
  FetchProductsCubit(this.homeRepoImp) : super(FetchProductsInitial());

  HomeRepoImp homeRepoImp;
  List<String> categories=[];
  List<Product_Model> products1=[];
  List<Product_Model> productssearch=[];
  String searchQuery='';

  onchange(){
    productssearch =products1.where((product) {
      final nameMatch = product.title!.toLowerCase().contains(searchQuery.toLowerCase());
      return nameMatch;
    }).toList();
    emit(FetchSearchState(search: productssearch));
  }
  Future<void> getAllProducts ()async{
    emit(LoadingProductsState());
    try {
      var product = await homeRepoImp.fetchProducts();
      products1.addAll(product);
      emit(FetchProductsState1(products: product));
    }catch(e){
      emit(ErrorFetchProductsState());
    }
    }

}




