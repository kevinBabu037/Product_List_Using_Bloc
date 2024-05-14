
class ProductModel{
 final String title;
 final int price;
 final String image;

  ProductModel({
    required this.title, 
    required this.price, 
    required this.image
    });

    factory ProductModel.formJson(Map<String,dynamic>json){
      return ProductModel(
        title: json['title'], 
        price: json['price'], 
        image: json['image']
        );
    }
}