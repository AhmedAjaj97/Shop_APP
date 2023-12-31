import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoping_app/features/basket_view/presentation/manager/mybasket_cubit.dart';
import 'package:shoping_app/features/basket_view/presentation/views/widgets/item_of_listview_basket.dart';
class  ListViewofBasketItem extends StatelessWidget {
  const  ListViewofBasketItem ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height*.42,
        width: double.infinity,
        child: ListView.builder(
            itemCount: BlocProvider.of<MybasketCubit>(context).Items.length,
            itemBuilder: (context, index) {
              return  ItemofbasketListview(basketModel:BlocProvider.of<MybasketCubit>(context).Items[index]);
            }));
  }
}
