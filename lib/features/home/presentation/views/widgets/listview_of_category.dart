import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shoping_app/core/utlts/approute.dart';
import 'package:shoping_app/features/home/presentation/manager/fetchcategories_cubit.dart';
import 'package:shoping_app/features/home/presentation/manager/fetchproducts_cubit.dart';
import 'package:shoping_app/features/home/presentation/views/items_of_category.dart';
class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchCategoriesCubit,FetchCategoriesState>(
        builder:(context,state){
          if(state is FetchCategoryState){
            return SizedBox(
              height: MediaQuery.of(context).size.height*.05,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount:state.categories.length,
                  itemBuilder: (context,index){
                    print( state.categories[0]);
                    return TextButton(
                      onPressed: ()async{
                        GoRouter.of(context).push(
                            AppRouter.kItemsOfCategories,
                            extra: state.categories[index]);
                      await  BlocProvider.of<FetchProductsCubit>(context).getCategoriesProducts(category:state.categories[index]);
                      },
                      child: Text(state.categories[index]),
                    );
                  }
              ),
            );
          }
          else {
            return const Center(child:  CircularProgressIndicator());
          }
        },
    );
  }
}
