// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'product_model.dart';

class ProductModelMapper extends ClassMapperBase<ProductModel> {
  ProductModelMapper._();

  static ProductModelMapper? _instance;
  static ProductModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ProductModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ProductModel';

  static int? _$id(ProductModel v) => v.id;
  static const Field<ProductModel, int> _f$id = Field('id', _$id, opt: true);
  static String? _$title(ProductModel v) => v.title;
  static const Field<ProductModel, String> _f$title =
      Field('title', _$title, opt: true);
  static String? _$description(ProductModel v) => v.description;
  static const Field<ProductModel, String> _f$description =
      Field('description', _$description, opt: true);
  static String? _$thumbnail(ProductModel v) => v.thumbnail;
  static const Field<ProductModel, String> _f$thumbnail =
      Field('thumbnail', _$thumbnail, opt: true);
  static double? _$price(ProductModel v) => v.price;
  static const Field<ProductModel, double> _f$price =
      Field('price', _$price, opt: true);

  @override
  final MappableFields<ProductModel> fields = const {
    #id: _f$id,
    #title: _f$title,
    #description: _f$description,
    #thumbnail: _f$thumbnail,
    #price: _f$price,
  };

  static ProductModel _instantiate(DecodingData data) {
    return ProductModel(
        id: data.dec(_f$id),
        title: data.dec(_f$title),
        description: data.dec(_f$description),
        thumbnail: data.dec(_f$thumbnail),
        price: data.dec(_f$price));
  }

  @override
  final Function instantiate = _instantiate;

  static ProductModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ProductModel>(map);
  }

  static ProductModel fromJson(String json) {
    return ensureInitialized().decodeJson<ProductModel>(json);
  }
}

mixin ProductModelMappable {
  String toJson() {
    return ProductModelMapper.ensureInitialized()
        .encodeJson<ProductModel>(this as ProductModel);
  }

  Map<String, dynamic> toMap() {
    return ProductModelMapper.ensureInitialized()
        .encodeMap<ProductModel>(this as ProductModel);
  }

  ProductModelCopyWith<ProductModel, ProductModel, ProductModel> get copyWith =>
      _ProductModelCopyWithImpl(this as ProductModel, $identity, $identity);
  @override
  String toString() {
    return ProductModelMapper.ensureInitialized()
        .stringifyValue(this as ProductModel);
  }

  @override
  bool operator ==(Object other) {
    return ProductModelMapper.ensureInitialized()
        .equalsValue(this as ProductModel, other);
  }

  @override
  int get hashCode {
    return ProductModelMapper.ensureInitialized()
        .hashValue(this as ProductModel);
  }
}

extension ProductModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ProductModel, $Out> {
  ProductModelCopyWith<$R, ProductModel, $Out> get $asProductModel =>
      $base.as((v, t, t2) => _ProductModelCopyWithImpl(v, t, t2));
}

abstract class ProductModelCopyWith<$R, $In extends ProductModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? id,
      String? title,
      String? description,
      String? thumbnail,
      double? price});
  ProductModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ProductModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ProductModel, $Out>
    implements ProductModelCopyWith<$R, ProductModel, $Out> {
  _ProductModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ProductModel> $mapper =
      ProductModelMapper.ensureInitialized();
  @override
  $R call(
          {Object? id = $none,
          Object? title = $none,
          Object? description = $none,
          Object? thumbnail = $none,
          Object? price = $none}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (title != $none) #title: title,
        if (description != $none) #description: description,
        if (thumbnail != $none) #thumbnail: thumbnail,
        if (price != $none) #price: price
      }));
  @override
  ProductModel $make(CopyWithData data) => ProductModel(
      id: data.get(#id, or: $value.id),
      title: data.get(#title, or: $value.title),
      description: data.get(#description, or: $value.description),
      thumbnail: data.get(#thumbnail, or: $value.thumbnail),
      price: data.get(#price, or: $value.price));

  @override
  ProductModelCopyWith<$R2, ProductModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ProductModelCopyWithImpl($value, $cast, t);
}
