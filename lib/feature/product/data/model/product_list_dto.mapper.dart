// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'product_list_dto.dart';

class ProductListDtoMapper extends ClassMapperBase<ProductListDto> {
  ProductListDtoMapper._();

  static ProductListDtoMapper? _instance;
  static ProductListDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ProductListDtoMapper._());
      ProductDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ProductListDto';

  static List<ProductDto> _$products(ProductListDto v) => v.products;
  static const Field<ProductListDto, List<ProductDto>> _f$products =
      Field('products', _$products);

  @override
  final MappableFields<ProductListDto> fields = const {
    #products: _f$products,
  };

  static ProductListDto _instantiate(DecodingData data) {
    return ProductListDto(products: data.dec(_f$products));
  }

  @override
  final Function instantiate = _instantiate;

  static ProductListDto fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ProductListDto>(map);
  }

  static ProductListDto fromJson(String json) {
    return ensureInitialized().decodeJson<ProductListDto>(json);
  }
}

mixin ProductListDtoMappable {
  String toJson() {
    return ProductListDtoMapper.ensureInitialized()
        .encodeJson<ProductListDto>(this as ProductListDto);
  }

  Map<String, dynamic> toMap() {
    return ProductListDtoMapper.ensureInitialized()
        .encodeMap<ProductListDto>(this as ProductListDto);
  }

  ProductListDtoCopyWith<ProductListDto, ProductListDto, ProductListDto>
      get copyWith => _ProductListDtoCopyWithImpl(
          this as ProductListDto, $identity, $identity);
  @override
  String toString() {
    return ProductListDtoMapper.ensureInitialized()
        .stringifyValue(this as ProductListDto);
  }

  @override
  bool operator ==(Object other) {
    return ProductListDtoMapper.ensureInitialized()
        .equalsValue(this as ProductListDto, other);
  }

  @override
  int get hashCode {
    return ProductListDtoMapper.ensureInitialized()
        .hashValue(this as ProductListDto);
  }
}

extension ProductListDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ProductListDto, $Out> {
  ProductListDtoCopyWith<$R, ProductListDto, $Out> get $asProductListDto =>
      $base.as((v, t, t2) => _ProductListDtoCopyWithImpl(v, t, t2));
}

abstract class ProductListDtoCopyWith<$R, $In extends ProductListDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, ProductDto, ProductDtoCopyWith<$R, ProductDto, ProductDto>>
      get products;
  $R call({List<ProductDto>? products});
  ProductListDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ProductListDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ProductListDto, $Out>
    implements ProductListDtoCopyWith<$R, ProductListDto, $Out> {
  _ProductListDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ProductListDto> $mapper =
      ProductListDtoMapper.ensureInitialized();
  @override
  ListCopyWith<$R, ProductDto, ProductDtoCopyWith<$R, ProductDto, ProductDto>>
      get products => ListCopyWith($value.products,
          (v, t) => v.copyWith.$chain(t), (v) => call(products: v));
  @override
  $R call({List<ProductDto>? products}) =>
      $apply(FieldCopyWithData({if (products != null) #products: products}));
  @override
  ProductListDto $make(CopyWithData data) =>
      ProductListDto(products: data.get(#products, or: $value.products));

  @override
  ProductListDtoCopyWith<$R2, ProductListDto, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ProductListDtoCopyWithImpl($value, $cast, t);
}
