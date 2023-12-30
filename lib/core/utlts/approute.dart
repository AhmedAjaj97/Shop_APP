
import 'package:go_router/go_router.dart';
import 'package:shoping_app/features/basket_view/presentation/views/basketview.dart';
import 'package:shoping_app/features/home/data/model/products_model.dart';
import 'package:shoping_app/features/home/presentation/views/home_view.dart';
import 'package:shoping_app/features/basket_view/presentation/views/item_details_view.dart';
import 'package:shoping_app/features/home/presentation/views/items_of_category.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBasketView = '/BasketView';
  static const kItemDetailsView = '/itemDetailsView';
  static const kItemsOfCategories = '/ItemsCategory';


  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kItemDetailsView,
        builder: (context,state)=> ItemDetails(
            product_model:state.extra as Product_Model
        ),
      ),
      GoRoute(
        path: kBasketView,
        builder: (context, state) => const BasketView(),
      ),
      GoRoute(
        path: kItemsOfCategories,
        builder: (context, state) =>  ItemsCategory(
            category: state.extra as String
        ),
      ),


    ],
  );
}