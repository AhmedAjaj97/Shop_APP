import 'package:flutter/material.dart';
import 'package:shoping_app/features/basket_view/presentation/views/widgets/checkout_button_widget.dart';
import 'package:shoping_app/features/basket_view/presentation/views/widgets/listview_of_basket.dart';
import 'package:shoping_app/features/basket_view/presentation/views/widgets/text_button_widget.dart';
import 'package:shoping_app/features/basket_view/presentation/views/widgets/totalpriceofbasket.dart';
class BodyOfBasket extends StatelessWidget {
  const BodyOfBasket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text("My Basket",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),),
          SizedBox(height: 20,),
          ListViewofBasketItem(),
          TotalPrice(),
          Spacer(),
          CustomButtons(),
          ContinueTextButton()
        ],
      ),
    );
  }
}


