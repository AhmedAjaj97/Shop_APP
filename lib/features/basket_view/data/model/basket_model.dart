class BasketModel{
 final String title;
 final String category;
 final String image;
  num price;
 num quantity;

 BasketModel({
   required this.price,
   required this.title,
   required this.category,
   required this.image,
   this.quantity=1
 });

 factory BasketModel.fromJson(json){
  return BasketModel(
       price: json['price'],
       image: json['image'],
       title: json['title'],
       category: json['category'],
  );
 }
}