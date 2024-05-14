import 'package:flutter/material.dart';
import 'package:interview_task/presentation/core/color.dart';

class TopBarWidget extends StatelessWidget {
  const TopBarWidget({
    super.key, required this.iconLeft, required this.iconRight,
    this.onPressed
  });
   final IconData iconLeft;
   final IconData iconRight;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [ 
     IconButton(onPressed:onPressed, icon: Icon(iconLeft,color: kClrWhite)),
        Icon(iconRight,color: kClrWhite,), 
      ],
    );
  }
}