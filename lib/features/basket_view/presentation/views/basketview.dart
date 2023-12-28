import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shoping_app/features/basket_view/presentation/views/widgets/body_of_basket.dart';

class BasketView extends StatelessWidget {
  const BasketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            GoRouter.of(context).pop();
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


