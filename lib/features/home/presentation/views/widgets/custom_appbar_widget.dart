import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shoping_app/core/utlts/approute.dart';
import 'package:shoping_app/features/basket_view/presentation/views/basketview.dart';

import '../../../../../core/utlts/styles.dart';
class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      backgroundColor: Colors.grey[300],
      elevation: 0,
      title: const Text(
        "Shopping",
        style: Styles.textstyle20,
      ),
      centerTitle: true,
      actions:  [
        IconButton(
          onPressed:(){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const BasketView()));
          } ,
          icon: Icon(Icons.shopping_cart_outlined),
          color: Colors.black,
        ),
      ],
    );
  }
}
