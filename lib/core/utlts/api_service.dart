import 'dart:convert';

import 'package:http/http.dart'as http;
class ApiService{
  final baseUrl="https://fakestoreapi.com/products/";
  Future <List<dynamic>> getAllProducts({required String endpoint})async{
    var response=await http.get(Uri.parse('https://fakestoreapi.com/products'));
    if(response.statusCode==200){
      var data = jsonDecode(response.body);
      return data;
    }else{
     return throw Exception("${response.reasonPhrase}" + "aaaaaaaaaaa");
    }
  }
  Future <List<dynamic>> getCategory({required String endpoint})async{
    var response=await http.get(Uri.parse('https://fakestoreapi.com/products/categories'));
    if(response.statusCode==200){
      var data = jsonDecode(response.body);
      return data;
    }else{
      return throw Exception("${response.reasonPhrase}" + "aaaaaaaaaaa");
    }
  }
  Future <List<dynamic>> getItemsOfCategories({required String endpoint})async{
    var response=await http.get(Uri.parse('https://fakestoreapi.com/products/category/'+endpoint));
    if(response.statusCode==200){
      var data = jsonDecode(response.body);
      return data;
    }else{
      return throw Exception("${response.reasonPhrase}" + "aaaaaaaaaaa");
    }
  }


}