import 'package:dart_mappable/dart_mappable.dart';
import 'package:product_app/feature/product/domain/model/product_model.dart';

part 'product_dto.mapper.dart';

@MappableClass()
class ProductDto with ProductDtoMappable {
  final int? id;
  final String? title;
  final String? description;
  final String? thumbnail;
  final double? price;

  ProductDto({
    this.id,
    this.title,
    this.description,
    this.thumbnail,
    this.price,
  });

  ProductModel toModel() => ProductModel(
        id: id,
        title: title,
        description: description,
        thumbnail: thumbnail,
        price: price,
      );

  static const fromJson = ProductDtoMapper.fromMap;
}
