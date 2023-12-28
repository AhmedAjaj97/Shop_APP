import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shoping_app/features/home/data/model/basket_model.dart';
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
  List<BasketModel> Items=[];

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
  Future<void> getCategoriesProducts ({required String category})async{
    emit(LoadingProductsOfCateState());
    try {
      var product = await homeRepoImp.ItemsofCategory(category: category);
      print("12345");
      emit(FetchCateState( products1: product));
    }catch(e){
      print(e.toString());
      emit(ErrorState());
    }
  }
  addToBasket(Product_Model product){
    final item=BasketModel(
        price:product.price! ,
        image: product.image!,
        title: product.title!,
        category: product.category!,
    );
    Items.add(item);
  }
  void quantity(BasketModel basketModel,String mark){
    if (mark == "+") {
      basketModel.quantity = basketModel.quantity + 1;
    }else {
      if(basketModel.quantity==0){
        basketModel.quantity=0;
      }else{
        basketModel.quantity--;
      }
    }
    emit(IncreaseQuantityState());
  }
  num MaxPrice(){
    num a=0;
    Items.forEach((item) {
      a= a+item.price*item.quantity;
      emit(MaxPriceState());
    });
    return a;
  }

}




