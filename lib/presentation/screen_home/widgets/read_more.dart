import 'package:flutter/material.dart';
import 'package:interview_task/presentation/core/color.dart';

class ReadMoreWidget extends StatelessWidget {
  const ReadMoreWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: [
     Text("Need more?",style: TextStyle(color:kClrWhite60,fontSize: 17,fontWeight: FontWeight.w300),),
     Container(
       padding:const EdgeInsets.symmetric(horizontal: 10), 
       height: 40,
       decoration: BoxDecoration(
         border: Border.all(color: kClrWhite60),
         borderRadius: BorderRadiusDirectional.circular(20)
       ),
       child: Center(child: Text("Add more",style: TextStyle(color: kClrWhite60),)),
     )
    ],
    );
  }
}