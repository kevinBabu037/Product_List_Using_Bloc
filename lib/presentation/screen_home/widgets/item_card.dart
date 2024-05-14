import 'package:flutter/material.dart';
import 'package:interview_task/data/models/product_model.dart';
import 'package:interview_task/presentation/core/color.dart';
import 'package:interview_task/presentation/core/functions.dart';
import 'package:interview_task/presentation/core/height_width.dart';
import 'package:interview_task/presentation/core/image.dart';
import 'package:interview_task/presentation/screen_home/widgets/product_details.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({
    super.key, required this.data,
  });
  final ProductModel data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
       kNavigationPush(context, ProductDetailsWidget(data: data,));
      },
      child: Container(      
        decoration: BoxDecoration(
          color:kClrLiteBlck,  
          borderRadius:BorderRadius.circular(15)  
        ),               
        padding:const EdgeInsets.all(10), 
        
       child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [ 
           FadeInImage(
            placeholderFit: BoxFit.cover,
            placeholder: AssetImage(placeHolderImage),
            image: NetworkImage(data.image,),fit: BoxFit.cover,
           ),
           kHeight20,
           Text(data.title,style: TextStyle(color: kClrWhite,fontSize: 18,overflow: TextOverflow.ellipsis  ),),
           Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text('${data.price} ₹',style: TextStyle(color: kClrWhite,fontWeight: FontWeight.bold,fontSize: 16),) ,
             Icon(Icons.add,color: kClrAmber,)
           ],)
         ],
       ),
                         
         
      ),
    );
  }
}