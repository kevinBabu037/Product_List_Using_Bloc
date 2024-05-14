import 'package:flutter/material.dart';
import 'package:interview_task/presentation/core/color.dart';

class FillterChoiceChipWidget extends StatelessWidget {
  const FillterChoiceChipWidget({
    super.key,
     required this.select,
     required this.text
  });
  final bool select;
  final String text;

  @override
  Widget build(BuildContext context) {  
    return ChoiceChip( 
      selectedColor: kClrAmber, 
      label: Text(text),  
      selected: select, 
    );
  }
}