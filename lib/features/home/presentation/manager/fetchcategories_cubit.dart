import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shoping_app/features/home/data/repo/repo_imp.dart';

part 'fetchcategories_state.dart';

class FetchCategoriesCubit extends Cubit<FetchCategoriesState> {
  FetchCategoriesCubit( this.homeRepoImp) : super(FetchCategoriesInitial());

  HomeRepoImp homeRepoImp;

  Future<void> getCategory ()async{
    emit(LoadingCategoryState());
    try {
      var product = await homeRepoImp.Category();
      emit(FetchCategoryState(categories: product));
    }catch(e){
      emit(ErrorCategoriesState());
    }
  }

}
