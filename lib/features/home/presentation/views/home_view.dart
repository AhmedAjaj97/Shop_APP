import 'package:flutter/material.dart';
import 'package:shoping_app/features/home/presentation/views/widgets/home_view_body_widget.dart';
class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeViewBody(),
    ) ;
  }
}



