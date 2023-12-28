import 'package:flutter/material.dart';
import 'package:shoping_app/features/home/data/model/products_model.dart';
class CustomProductItem extends StatelessWidget {
  const CustomProductItem({Key? key,required this.product}) : super(key: key);
  final Product_Model product;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[300],
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide.none
      ),
      elevation: 1,
      child:  Padding(
        padding: const  EdgeInsets.only(left: 10),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("${'\$'+product.price.toString()}",
                style:const TextStyle(fontSize:15,
                    fontWeight: FontWeight.bold
                ),
              ),
              const Spacer(),
            ],
          ),
          const SizedBox(height: 20,),
          Align(
             child:CircleAvatar(
               radius: 60,
            backgroundColor:Colors.white,
            child:Image.network(
                product.image!,
              width: 60,

                  ) ,
              ) ,
            ),
          const SizedBox(height: 12,),
           Text(product.title!,
            style:const TextStyle(fontSize:13 ),
             maxLines: 2,
          ),
           const SizedBox(height: 6,),
           Text(product.category!,
            style:const TextStyle(color: Colors.grey,fontSize:12 ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),

        ],
      ),
      ),
    );
  }
}

