// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'product_dto.dart';

class ProductDtoMapper extends ClassMapperBase<ProductDto> {
  ProductDtoMapper._();

  static ProductDtoMapper? _instance;
  static ProductDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ProductDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ProductDto';

  static int? _$id(ProductDto v) => v.id;
  static const Field<ProductDto, int> _f$id = Field('id', _$id, opt: true);
  static String? _$title(ProductDto v) => v.title;
  static const Field<ProductDto, String> _f$title =
      Field('title', _$title, opt: true);
  static String? _$description(ProductDto v) => v.description;
  static const Field<ProductDto, String> _f$description =
      Field('description', _$description, opt: true);
  static String? _$thumbnail(ProductDto v) => v.thumbnail;
  static const Field<ProductDto, String> _f$thumbnail =
      Field('thumbnail', _$thumbnail, opt: true);
  static double? _$price(ProductDto v) => v.price;
  static const Field<ProductDto, double> _f$price =
      Field('price', _$price, opt: true);

  @override
  final MappableFields<ProductDto> fields = const {
    #id: _f$id,
    #title: _f$title,
    #description: _f$description,
    #thumbnail: _f$thumbnail,
    #price: _f$price,
  };

  static ProductDto _instantiate(DecodingData data) {
    return ProductDto(
        id: data.dec(_f$id),
        title: data.dec(_f$title),
        description: data.dec(_f$description),
        thumbnail: data.dec(_f$thumbnail),
        price: data.dec(_f$price));
  }

  @override
  final Function instantiate = _instantiate;

  static ProductDto fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ProductDto>(map);
  }

  static ProductDto fromJson(String json) {
    return ensureInitialized().decodeJson<ProductDto>(json);
  }
}

mixin ProductDtoMappable {
  String toJson() {
    return ProductDtoMapper.ensureInitialized()
        .encodeJson<ProductDto>(this as ProductDto);
  }

  Map<String, dynamic> toMap() {
    return ProductDtoMapper.ensureInitialized()
        .encodeMap<ProductDto>(this as ProductDto);
  }

  ProductDtoCopyWith<ProductDto, ProductDto, ProductDto> get copyWith =>
      _ProductDtoCopyWithImpl(this as ProductDto, $identity, $identity);
  @override
  String toString() {
    return ProductDtoMapper.ensureInitialized()
        .stringifyValue(this as ProductDto);
  }

  @override
  bool operator ==(Object other) {
    return ProductDtoMapper.ensureInitialized()
        .equalsValue(this as ProductDto, other);
  }

  @override
  int get hashCode {
    return ProductDtoMapper.ensureInitialized().hashValue(this as ProductDto);
  }
}

extension ProductDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ProductDto, $Out> {
  ProductDtoCopyWith<$R, ProductDto, $Out> get $asProductDto =>
      $base.as((v, t, t2) => _ProductDtoCopyWithImpl(v, t, t2));
}

abstract class ProductDtoCopyWith<$R, $In extends ProductDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? id,
      String? title,
      String? description,
      String? thumbnail,
      double? price});
  ProductDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ProductDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ProductDto, $Out>
    implements ProductDtoCopyWith<$R, ProductDto, $Out> {
  _ProductDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ProductDto> $mapper =
      ProductDtoMapper.ensureInitialized();
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
  ProductDto $make(CopyWithData data) => ProductDto(
      id: data.get(#id, or: $value.id),
      title: data.get(#title, or: $value.title),
      description: data.get(#description, or: $value.description),
      thumbnail: data.get(#thumbnail, or: $value.thumbnail),
      price: data.get(#price, or: $value.price));

  @override
  ProductDtoCopyWith<$R2, ProductDto, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ProductDtoCopyWithImpl($value, $cast, t);
}
