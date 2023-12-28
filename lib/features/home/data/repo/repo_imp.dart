import 'package:shoping_app/core/utlts/api_service.dart';
import 'package:shoping_app/features/home/data/model/products_model.dart';
import 'package:shoping_app/features/home/data/repo/home_repo.dart';

class HomeRepoImp implements HomeRepo{
   ApiService apiService;

  HomeRepoImp(this.apiService);
  @override
  void favoriteProduct() {
  }

  @override
  Future<List<Product_Model>> fetchProducts()async {
  var data =await apiService.getAllProducts(endpoint: "products");
    return data.map((product) =>
        Product_Model.fromJson(product),
    ).toList();

  }

  @override
  Future<List<Product_Model>> searchProducts() {
    // TODO: implement searchProducts
    throw UnimplementedError();
  }

  @override
  Future<List<String>> Category() async {
      var data =await apiService.getCategory(endpoint: "");
       final List<String> stringlist=data.map((item) => item.toString()).toList();
       return stringlist;
  }

  @override
  Future<List<Product_Model>> ItemsofCategory({required String category}) async{
    var data =await apiService.getItemsOfCategories(endpoint: category);
    return data.map((product) =>
        Product_Model.fromJson(product),
    ).toList();

  }

}