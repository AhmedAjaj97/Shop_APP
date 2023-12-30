import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shoping_app/core/utlts/approute.dart';
import 'package:shoping_app/features/home/presentation/manager/fetchproducts_cubit.dart';
import 'package:shoping_app/features/basket_view/presentation/views/item_details_view.dart';
import 'package:shoping_app/features/home/presentation/views/widgets/gridview_item_widget.dart';
class CustomGridViewList extends StatelessWidget {
  const CustomGridViewList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchProductsCubit,FetchProductsState>(
        builder: (context,state){
          if(state is FetchProductsState1){
            print(state.products.length.toString());
            return  Expanded(
              child: GridView.builder(

                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 2.7/4,
                      crossAxisSpacing: 6,
                      mainAxisSpacing: 6
                  ),
                  shrinkWrap: true,
                  itemCount: state.products.length,
                  itemBuilder:(context,index){
                    return  GestureDetector(
                      onTap: (){
                        GoRouter.of(context).push(
                            AppRouter.kItemDetailsView,
                            extra: state.products[index]);
                      },
                        child: CustomProductItem(product: state.products[index],
                        ),
                    );
                  }),
            );
          }
          else if(state is LoadingProductsState) {
            return const Center(
                child: CircularProgressIndicator(),
            );
          }
          else if(state is FetchSearchState){
            print(state.search.length.toString());
            return  Expanded(
              child: GridView.builder(

                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 2.7/4,
                      crossAxisSpacing: 6,
                      mainAxisSpacing: 6
                  ),
                  shrinkWrap: true,
                  itemCount: state.search.length,
                  itemBuilder:(context,index){
                    return  CustomProductItem(product: state.search[index],);
                  }),
            );
          }
          else {
            return const Text("Error");
          }
    });
  }
}
