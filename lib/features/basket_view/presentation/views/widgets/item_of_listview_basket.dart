import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoping_app/features/basket_view/presentation/views/widgets/add_or_remove_widget.dart';
import 'package:shoping_app/features/home/data/model/basket_model.dart';
import 'package:shoping_app/features/home/presentation/manager/fetchproducts_cubit.dart';

import '../../../../../core/utlts/assets.dart';
class ItemofbasketListview extends StatelessWidget {
   ItemofbasketListview({
  super.key,
  required this.basketModel
  });
  BasketModel basketModel;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchProductsCubit,FetchProductsState>(
        builder:(context,state){
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30,
                    child: Image.network(
                      basketModel.image,
                      width: 30,

                    ),
                  ),
                  const  SizedBox(width: 8,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(basketModel.title,
                        style:const TextStyle(),),
                      const  SizedBox(height: 5,),
                      Text("\$""${basketModel.quantity*basketModel.price}",
                        style:const TextStyle(
                            fontSize: 12
                        )
                        ,),
                      const  SizedBox(height: 10,),
                      Row(
                        children: [
                          const  Text("Color: Black",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey
                            )
                            ,),
                          SizedBox(width: MediaQuery.of(context).size.width * .27,),
                          AddorRemoveProduct(basketModel: basketModel,),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const  SizedBox(height: 5,),
              const  Divider(
                thickness: 1.5,
              )
            ],
          );

        }
      ,);
  }
}
