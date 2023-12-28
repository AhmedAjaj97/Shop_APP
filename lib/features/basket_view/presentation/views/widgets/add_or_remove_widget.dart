import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoping_app/features/home/data/model/basket_model.dart';
import 'package:shoping_app/features/home/presentation/manager/fetchproducts_cubit.dart';
class AddorRemoveProduct extends StatelessWidget {
  AddorRemoveProduct({
  super.key,
  required this.basketModel
  });
BasketModel basketModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: GestureDetector(
            onTap: (){
              BlocProvider.of<FetchProductsCubit>(context).quantity(basketModel,"-");
            },
            child:const Icon(
              Icons.remove_circle_outline,
              size: 20,
            ),
          ),
        ),
        Text(basketModel.quantity.toString()),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: GestureDetector(
            onTap: (){
              BlocProvider.of<FetchProductsCubit>(context).quantity(basketModel,"+");
            },
            child:const Icon(
              Icons.add_circle_outline,
              size: 20,
            ),
          ),
        ),
      ],
    );
  }
}
