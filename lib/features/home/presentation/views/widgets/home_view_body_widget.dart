import 'package:flutter/material.dart';
import 'package:shoping_app/features/home/presentation/views/widgets/custom_appbar_widget.dart';
import 'package:shoping_app/features/home/presentation/views/widgets/custom_gridview_widget.dart';
import 'package:shoping_app/features/home/presentation/views/widgets/custom_textfield_widget.dart';
import 'package:shoping_app/features/home/presentation/views/widgets/listview_of_category.dart';
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const CustomAppbar(),
          const CustomTextField(),
           Padding(
            padding:const EdgeInsets.symmetric(vertical: 15),
            child: Category(),
          ),
          const CustomGridViewList(),
        ],
      ),
    );
  }
}
