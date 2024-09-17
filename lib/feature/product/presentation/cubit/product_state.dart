part of 'product_cubit.dart';

@MappableClass()
final class ProductState with ProductStateMappable {
  ProductState({
    this.products = const [],
    this.isLoading = false,
    this.errorMessage,
  });

  final List<ProductModel> products;
  final bool isLoading;
  final String? errorMessage;
}
