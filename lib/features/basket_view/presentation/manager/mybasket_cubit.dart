import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shoping_app/features/basket_view/data/model/basket_model.dart';

import '../../../home/data/model/products_model.dart';

part 'mybasket_state.dart';

class MybasketCubit extends Cubit<MybasketState> {
  MybasketCubit() : super(MybasketInitial());


  List<BasketModel> Items=[];
  addToBasket(Product_Model product){
    bool isAlreadyAdded = Items.any((item) => item.title == product.title);
    if(!isAlreadyAdded) {
      final item = BasketModel(
        price: product.price!,
        image: product.image!,
        title: product.title!,
        category: product.category!,
      );
      Items.add(item);
    }
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
