// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'product_list_model.dart';

class ProductListModelMapper extends ClassMapperBase<ProductListModel> {
  ProductListModelMapper._();

  static ProductListModelMapper? _instance;
  static ProductListModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ProductListModelMapper._());
      ProductModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ProductListModel';

  static List<ProductModel> _$products(ProductListModel v) => v.products;
  static const Field<ProductListModel, List<ProductModel>> _f$products =
      Field('products', _$products);

  @override
  final MappableFields<ProductListModel> fields = const {
    #products: _f$products,
  };

  static ProductListModel _instantiate(DecodingData data) {
    return ProductListModel(products: data.dec(_f$products));
  }

  @override
  final Function instantiate = _instantiate;

  static ProductListModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ProductListModel>(map);
  }

  static ProductListModel fromJson(String json) {
    return ensureInitialized().decodeJson<ProductListModel>(json);
  }
}

mixin ProductListModelMappable {
  String toJson() {
    return ProductListModelMapper.ensureInitialized()
        .encodeJson<ProductListModel>(this as ProductListModel);
  }

  Map<String, dynamic> toMap() {
    return ProductListModelMapper.ensureInitialized()
        .encodeMap<ProductListModel>(this as ProductListModel);
  }

  ProductListModelCopyWith<ProductListModel, ProductListModel, ProductListModel>
      get copyWith => _ProductListModelCopyWithImpl(
          this as ProductListModel, $identity, $identity);
  @override
  String toString() {
    return ProductListModelMapper.ensureInitialized()
        .stringifyValue(this as ProductListModel);
  }

  @override
  bool operator ==(Object other) {
    return ProductListModelMapper.ensureInitialized()
        .equalsValue(this as ProductListModel, other);
  }

  @override
  int get hashCode {
    return ProductListModelMapper.ensureInitialized()
        .hashValue(this as ProductListModel);
  }
}

extension ProductListModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ProductListModel, $Out> {
  ProductListModelCopyWith<$R, ProductListModel, $Out>
      get $asProductListModel =>
          $base.as((v, t, t2) => _ProductListModelCopyWithImpl(v, t, t2));
}

abstract class ProductListModelCopyWith<$R, $In extends ProductListModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, ProductModel,
      ProductModelCopyWith<$R, ProductModel, ProductModel>> get products;
  $R call({List<ProductModel>? products});
  ProductListModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ProductListModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ProductListModel, $Out>
    implements ProductListModelCopyWith<$R, ProductListModel, $Out> {
  _ProductListModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ProductListModel> $mapper =
      ProductListModelMapper.ensureInitialized();
  @override
  ListCopyWith<$R, ProductModel,
          ProductModelCopyWith<$R, ProductModel, ProductModel>>
      get products => ListCopyWith($value.products,
          (v, t) => v.copyWith.$chain(t), (v) => call(products: v));
  @override
  $R call({List<ProductModel>? products}) =>
      $apply(FieldCopyWithData({if (products != null) #products: products}));
  @override
  ProductListModel $make(CopyWithData data) =>
      ProductListModel(products: data.get(#products, or: $value.products));

  @override
  ProductListModelCopyWith<$R2, ProductListModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ProductListModelCopyWithImpl($value, $cast, t);
}
