import 'package:flutter/material.dart';
import 'package:interview_task/data/models/product_model.dart';
import 'package:interview_task/presentation/core/color.dart';
import 'package:interview_task/presentation/core/height_width.dart';
import 'package:interview_task/presentation/screen_home/widgets/add_to_cart_button.dart';
import 'package:interview_task/presentation/screen_home/widgets/read_more.dart';
import 'package:interview_task/presentation/widgets/top_bar.dart';

class ProductDetailsWidget extends StatelessWidget {
  const ProductDetailsWidget({super.key, required this.data});
    final ProductModel data;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kClrBlack, 
      body: SafeArea( 
        child: Padding(
          padding:const  EdgeInsets.all(10), 
          child: Column(
            children: [
              TopBarWidget(
              onPressed: () => Navigator.pop(context),  
                iconLeft: Icons.arrow_back_ios,
                iconRight: Icons.more_vert,
              ),
              kHeight40,
              Container(
                height: 250 ,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(10),
                  image: DecorationImage(image: NetworkImage(data.image),fit: BoxFit.cover)
                ),
              ),
              kHeight30,
             Text(data.title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300, color: kClrWhite60),),

             kHeight40,

             Row(
               children: [
                 IconButton(onPressed: (){}, 
                  icon: Icon(Icons.do_not_disturb_on_outlined,size: 30,color: kClrWhite60,)),
                  Text("1",style: TextStyle(color: kClrWhite,fontWeight: FontWeight.bold,fontSize: 19  ),),
                  IconButton(onPressed: (){},
                  icon: Icon(Icons.add_circle_outline,size: 30,color: kClrAmber,)),
                 const Spacer(),
                 Text("${data.price} ₹",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20  , color: kClrWhite),),
               ],
             ) ,

             kHeight40,

            const ReadMoreWidget(),
             kHeight70,
            const AddToCartButtonWidget()

            ],
          ),
        ),
      ),
    );
  }
}

