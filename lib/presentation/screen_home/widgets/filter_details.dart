import 'package:flutter/material.dart';
import 'package:interview_task/presentation/core/color.dart';
import 'package:interview_task/presentation/screen_home/widgets/filter_choicechip.dart';

class FilterDetailsWidget extends StatelessWidget {
  const FilterDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.spaceAround,   
           children: [  
         const FillterChoiceChipWidget(select: true,text: 'Toys',), 
         const FillterChoiceChipWidget(select: false,text: 'Shoes',),
         const FillterChoiceChipWidget(select: false,text: 'watches',),
         Icon(Icons.sort,color: kClrWhite60,size: 33 ,)  
          ],
        );
  }
}