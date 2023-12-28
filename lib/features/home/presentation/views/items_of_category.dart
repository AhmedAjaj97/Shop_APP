import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shoping_app/core/utlts/approute.dart';
import 'package:shoping_app/features/home/presentation/manager/fetchproducts_cubit.dart';
import 'package:shoping_app/features/home/presentation/views/widgets/gridview_item_widget.dart';
class ItemsCategory extends StatelessWidget {
   ItemsCategory({Key? key,required this.category}) : super(key: key);
  String category;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        elevation: 0,
        leading: IconButton(
            onPressed: ()async{
              GoRouter.of(context).pop();
              await BlocProvider.of<FetchProductsCubit>(context).getAllProducts();
            },
            icon:const Icon(Icons.arrow_back_ios,color: Colors.black,),
        ),
      ),
      body: SafeArea(
        child: BlocBuilder<FetchProductsCubit,FetchProductsState>(
          builder:(context,state){
            if (state is FetchCateState){
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17,vertical: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(category,
                      style:const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ) ,
                    ),
                   const SizedBox(height: 30,),
                    Expanded(
                      child: GridView.builder(
                        itemCount: state.products1.length,
                        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 2.9/4.3,
                          mainAxisSpacing: 6,
                          crossAxisSpacing: 3
                        ),
                        itemBuilder:(context,index){
                          return GestureDetector(
                            onTap: (){
                              GoRouter.of(context).push(
                                  AppRouter.kItemDetailsView,
                                  extra: state.products1[index],
                              );
                            },
                              child: CustomProductItem(product: state.products1[index],
                              ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              );
            }
            else {
              return const Center(child: CircularProgressIndicator());
            }

          }
          ,),
      ),
    );
  }
}
