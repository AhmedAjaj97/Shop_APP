import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shoping_app/features/home/data/model/products_model.dart';
class Rating1 extends StatelessWidget {
  const Rating1({Key? key,required this.product}) : super(key: key);
 final Product_Model product;
  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          const Icon(
            FontAwesomeIcons.solidStar,
            size: 14,
            color: Color(0xffFFDD4F),
          ),
          const SizedBox(
            width: 6.3,
          ),
          Text(
""          ),
          const SizedBox(
            width: 5,
          ),
          Opacity(
            opacity: .5,
            child: Text(
""            ,  style:
              const TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
        ]
    );
  }
}
