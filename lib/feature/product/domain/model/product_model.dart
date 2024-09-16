import 'package:dart_mappable/dart_mappable.dart';

part 'product_model.mapper.dart';

@MappableClass()
class ProductModel with ProductModelMappable {
  final int? id;
  final String? title;
  final String? description;
  final String? thumbnail;
  final double? price;

  ProductModel({
    this.id,
    this.title,
    this.description,
    this.thumbnail,
    this.price,
  });

// factory ProductModel.fromJson(Map<String, dynamic> json) {
//   return ProductModel(
//     id: json['id'],
//     title: json['title'],
//     description: json['description'],
//     thumbnail: json['thumbnail'],
//     price: json['price'].toDouble(),
//   );
// }
}
