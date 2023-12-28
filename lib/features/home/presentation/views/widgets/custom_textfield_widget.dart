import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoping_app/features/home/presentation/manager/fetchproducts_cubit.dart';
class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 40,
      child: TextFormField(
        onChanged: (product){
          BlocProvider.of<FetchProductsCubit>(context).searchQuery=product;
          BlocProvider.of<FetchProductsCubit>(context).onchange();
        },
        decoration: InputDecoration(
            hintText: "Search",
            contentPadding:const EdgeInsets.only(top: 12),
            prefixIcon:const Icon(Icons.search),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20)
            )
        ),
      ),
    );
  }
}
