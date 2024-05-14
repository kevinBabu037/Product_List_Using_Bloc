import 'package:flutter/material.dart';
import 'package:interview_task/presentation/core/color.dart';

class AddToCartButtonWidget extends StatelessWidget {
  const AddToCartButtonWidget({
    super.key,
    
  });
   
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: (){},
      child: Container(
        decoration: BoxDecoration(
        color: kClrAmber, 
        borderRadius:const BorderRadius.all(Radius.circular(10))
        ), 
        height:55,
        child: Center(
          child: Text("Add to cart",style: TextStyle(color: kClrBlack,fontSize: 17,fontWeight: FontWeight.bold,),), 
        ),
      ),
      );
  }
}