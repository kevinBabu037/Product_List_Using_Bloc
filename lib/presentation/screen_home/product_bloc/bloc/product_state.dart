part of 'product_bloc.dart';

@immutable
sealed class ProductState {}

final class ProductInitial extends ProductState {}

final class ProductLoadingState extends ProductState {}

final class ProductSuccessState extends ProductState {
  final List<ProductModel> products;

  ProductSuccessState({required this.products}); 
}

final class ProductEmptyState extends ProductState {}

final class ProductErrorState extends ProductState {}






