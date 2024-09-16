import 'package:product_app/feature/product/domain/model/product_list_model.dart';

abstract class ProductRepository {
  Future<ProductListModel> getProducts();
}
