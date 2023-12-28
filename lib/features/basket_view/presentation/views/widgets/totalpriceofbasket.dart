import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoping_app/features/home/presentation/manager/fetchproducts_cubit.dart';
class TotalPrice extends StatelessWidget {
  const TotalPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchProductsCubit,FetchProductsState>(
        builder:(context,state)
    {
      return Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Row(
            children: [
              const Text("Total Amount",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold
                ),
              ),
              const Spacer(),
              Text("\$" + "${BlocProvider.of<FetchProductsCubit>(context)
                  .MaxPrice()
                  .toString()}",
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                ),
              ),
            ]
        ),
      );
    }
    );
    }
  }

