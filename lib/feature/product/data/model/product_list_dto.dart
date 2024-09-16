import 'package:dart_mappable/dart_mappable.dart';
import 'package:product_app/feature/product/data/model/product_dto.dart';
import 'package:product_app/feature/product/domain/model/product_list_model.dart';

part 'product_list_dto.mapper.dart';

@MappableClass()
class ProductListDto with ProductListDtoMappable {
  final List<ProductDto> products;

  ProductListDto({required this.products});

  ProductListModel toModel() {
    return ProductListModel(
      products: products.map((e) => e.toModel()).toList(),
    );
  }

  static const fromJson = ProductListDtoMapper.fromMap;
}
