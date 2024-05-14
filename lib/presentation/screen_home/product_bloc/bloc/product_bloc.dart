import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:interview_task/data/models/product_model.dart';
import 'package:interview_task/data/product_service/api.dart';
import 'package:meta/meta.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitial()) {
    on<FechProductsEvent>(fechProductsEvent);
  }

  ProductService service =ProductService();

  FutureOr<void> fechProductsEvent(FechProductsEvent event, Emitter<ProductState> emit)async {

    emit(ProductLoadingState());

    List <ProductModel>? products = await service.getAllProducts();

    if (products!=null) {
      emit(ProductSuccessState(products: products));
    }else if(products==null){
      emit(ProductEmptyState());
    }else{
      emit(ProductErrorState());
    }
  }
}
