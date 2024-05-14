
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview_task/presentation/core/color.dart';
import 'package:interview_task/presentation/core/height_width.dart';
import 'package:interview_task/presentation/screen_home/product_bloc/bloc/product_bloc.dart';
import 'package:interview_task/presentation/screen_home/widgets/filter_details.dart';
import 'package:interview_task/presentation/screen_home/widgets/item_card.dart';
import 'package:interview_task/presentation/widgets/top_bar.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

 
  @override
  Widget build(BuildContext context) {
    context.read<ProductBloc>().add(FechProductsEvent()); 
    return  Scaffold(   
      body:SafeArea(
        child: Container(
          decoration: BoxDecoration(     
        gradient: LinearGradient(  
           stops:const [ 0,  0.3, ], 
          begin: Alignment.topLeft, 
          end: Alignment.centerRight,
          colors: [ 
           kClrAmber, 
           kClrBlack 
          ]
          )
      ),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
             children: [
             const TopBarWidget(iconLeft:Icons.segment,iconRight: CupertinoIcons.search,),
               kHeight30, 
               Text(' Find Your Favorites Here!',style: TextStyle(color: kClrWhite,fontWeight: FontWeight.bold,fontSize: 33 ),),
               Text(' Happiness!',style: TextStyle(color: kClrWhite,fontSize: 23,fontWeight: FontWeight.w300),),
               kHeight20,
                const FilterDetailsWidget(),  
               Expanded(
                child: BlocBuilder<ProductBloc, ProductState>(
                  builder: (context, state) {
                     if (state is ProductLoadingState) {
                          return const Center(child: CircularProgressIndicator(),);
                        }else if(state is ProductSuccessState){ 
                          return GridView.builder( 
                                  itemCount: state.products.length ,
                                  gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisSpacing: 20,
                                    mainAxisSpacing: 20, 
                                    crossAxisCount: 2,
                                    childAspectRatio:6/10            
                                    ), 
                                  itemBuilder: (context, index) { 
                                    final data = state.products[index];
                                   return  ProductCardWidget(data: data,);
                                  },
                                  );
                        } 
                        return const Center(child: Text('Fail to fech'),);
                  },
                ))
             ], 
          ),
        ),
      )
    ); 
  }
}




