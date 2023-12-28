import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoping_app/core/utlts/api_service.dart';
import 'package:shoping_app/core/utlts/approute.dart';
import 'package:shoping_app/features/home/presentation/manager/fetchcategories_cubit.dart';
import 'package:shoping_app/features/home/presentation/manager/fetchproducts_cubit.dart';

import 'features/home/data/repo/repo_imp.dart';
import 'features/home/presentation/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers:[
          BlocProvider(
            create:(context)=>FetchProductsCubit(HomeRepoImp(ApiService()))..getAllProducts(),
          ),
          BlocProvider(
            create:(context)=>FetchCategoriesCubit(HomeRepoImp(ApiService()))..getCategory(),
          )

        ],
        child:MaterialApp.router (
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light().copyWith(
              scaffoldBackgroundColor: Colors.grey[300]
          ),
          routerConfig: AppRouter.router,
        )
    );
  }
}

