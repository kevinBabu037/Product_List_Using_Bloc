import 'package:flutter/material.dart';
import 'package:interview_task/presentation/screen_home/product_bloc/bloc/product_bloc.dart';
import 'package:interview_task/presentation/screen_home/screen_home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
 void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); 

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
          providers: [ 
            BlocProvider(create: (context) => ProductBloc(),),
          ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(        
          useMaterial3: true,
        ),
        home: const ScreenHome(),
      ),
    );
  }
}
