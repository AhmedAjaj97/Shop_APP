import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shoping_app/core/utlts/approute.dart';
import 'package:shoping_app/features/home/presentation/manager/fetchcategories_cubit.dart';
import 'package:shoping_app/features/home/presentation/manager/fetchproducts_cubit.dart';
import 'package:shoping_app/features/home/presentation/views/items_of_category.dart';
class Category extends StatelessWidget {
   Category({Key? key}) : super(key: key);

  List<String> Categories=["electronics","jewelery","men's clothing","women's clothing"];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
              height: MediaQuery.of(context).size.height*.05,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount:Categories.length,
                  itemBuilder: (context,index){
                    return TextButton(
                      onPressed: ()async{
                        GoRouter.of(context).push(
                            AppRouter.kItemsOfCategories,
                            extra: Categories[index]);
                      await  BlocProvider.of<FetchCategoriesCubit>(context).getCategoriesProducts(category:Categories[index]);
                      },
                      child: Text(Categories[index]),
                    );
                  }
              ),
            );
          }
        }



