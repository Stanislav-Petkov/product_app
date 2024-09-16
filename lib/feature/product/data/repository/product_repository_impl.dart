import 'package:product_app/feature/product/data/repository/product_client.dart';
import 'package:product_app/feature/product/domain/model/product_list_model.dart';
import 'package:product_app/feature/product/domain/repository/product_repository.dart';

import 'package:injectable/injectable.dart';

@LazySingleton(as: ProductRepository)
class ProductRepositoryImpl implements ProductRepository {
  final ProductClient productClient;

  ProductRepositoryImpl(
    this.productClient,
  );

  @override
  Future<ProductListModel> getProducts() async {
    final products = await productClient.getProducts();
    return products.toModel();
  }
}
