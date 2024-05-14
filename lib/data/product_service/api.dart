import "dart:convert";
import "dart:developer";

import "package:http/http.dart" as http;
import "package:interview_task/data/models/product_model.dart";
import "package:interview_task/presentation/core/constants.dart";


class ProductService{
   
Future<List<ProductModel>?> getAllProducts() async {
    final url = Uri.parse(Constnts.getProducts);
    try {
      final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
         'appid': Constnts.apiKey
      },
      body: {
       'page':"1"
      },
    );
     log(response.body);
     if (response.statusCode==200) {
       final decodedJson = jsonDecode(response.body);
       List<dynamic> decodedList = decodedJson['list'];
       List<ProductModel> products = decodedList.map((e) =>ProductModel.formJson(e)).toList();
       return products;
     }
     return null;

    } catch (e) {
      throw Exception(e);
      
    }
  
}



}