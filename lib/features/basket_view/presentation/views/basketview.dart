import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shoping_app/features/basket_view/presentation/views/widgets/body_of_basket.dart';
import 'package:shoping_app/features/home/presentation/manager/fetchproducts_cubit.dart';

class BasketView extends StatelessWidget {
  const BasketView({Key? key}) : super(key: key);

  @override
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
          icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
        ),
      ),
      body:const SafeArea(
        child: BodyOfBasket(),
      ),
    );
  }
}


