import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoping_app/features/home/data/model/products_model.dart';
import 'package:shoping_app/features/home/presentation/manager/fetchproducts_cubit.dart';
class ItemDetails extends StatelessWidget {
   ItemDetails({Key? key,required this.product_model}) : super(key: key);
  Product_Model product_model;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:BlocBuilder<FetchProductsCubit,FetchProductsState>(builder: (context,state){
        return     SafeArea(
          child:  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height *.60,
                  child:   Align(
                    alignment: Alignment.center,
                    child:CircleAvatar(
                      radius: 150,
                      backgroundColor:Colors.white,
                      child:Image.network(
                        product_model.image!,
                        width: 120,

                      ) ,
                    ) ,
                  ),
                ),
                Expanded(
                  child: Card(
                    elevation: 6,
                    shape: const OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        borderSide: BorderSide.none
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30,right: 20,left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(product_model.title!,
                            style:const TextStyle(fontSize: 18,
                                fontWeight: FontWeight.w600
                            )
                            ,),
                          const SizedBox(height: 10,),
                          Text(product_model.description!,
                            style:const TextStyle(color: Colors.grey,fontSize:14 ),
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              Text("\$${product_model.price!.toString()}",
                                style:const TextStyle(fontSize: 18,fontWeight: FontWeight.bold) ,),
                              const  Spacer(),
                              IconButton(onPressed: (){
                                BlocProvider.of<FetchProductsCubit>(context).addToBasket(product_model);
                              },
                                icon: const Icon(Icons.add_shopping_cart),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),

          ),
        );
      })


    );
  }
}
