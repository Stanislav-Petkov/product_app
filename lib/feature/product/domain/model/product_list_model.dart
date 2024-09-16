import 'package:dart_mappable/dart_mappable.dart';
import 'package:product_app/feature/product/domain/model/product_model.dart';

part 'product_list_model.mapper.dart';

@MappableClass()
class ProductListModel with ProductListModelMappable {
  final List<ProductModel> products;

  ProductListModel({required this.products});
}
