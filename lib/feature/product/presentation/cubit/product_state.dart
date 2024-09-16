part of 'product_cubit.dart';

@MappableClass()
final class ProductState with ProductStateMappable {
  ProductState({
    this.products = const [],
    this.isLoading = false,
  });

  final List<ProductModel> products;
  final bool isLoading;
}
