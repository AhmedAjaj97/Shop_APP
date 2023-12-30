import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shoping_app/features/home/data/repo/repo_imp.dart';

import '../../data/model/products_model.dart';

part 'fetchcategories_state.dart';

class FetchCategoriesCubit extends Cubit<FetchCategoriesState> {
  FetchCategoriesCubit( this.homeRepoImp) : super(FetchCategoriesInitial());

  HomeRepoImp homeRepoImp;

  Future<void> getCategoriesProducts ({required String category})async{
    emit(LoadingProductsOfCateState());
    try {
      var product = await homeRepoImp.ItemsofCategory(category: category);
      emit(FetchCateState( products1: product));
    }catch(e){
      emit(ErrorState());
    }
  }


}
