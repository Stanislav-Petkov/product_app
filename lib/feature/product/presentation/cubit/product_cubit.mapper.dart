// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'product_cubit.dart';

class ProductStateMapper extends ClassMapperBase<ProductState> {
  ProductStateMapper._();

  static ProductStateMapper? _instance;
  static ProductStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ProductStateMapper._());
      ProductModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ProductState';

  static List<ProductModel> _$products(ProductState v) => v.products;
  static const Field<ProductState, List<ProductModel>> _f$products =
      Field('products', _$products, opt: true, def: const []);
  static bool _$isLoading(ProductState v) => v.isLoading;
  static const Field<ProductState, bool> _f$isLoading =
      Field('isLoading', _$isLoading, opt: true, def: false);
  static String? _$errorMessage(ProductState v) => v.errorMessage;
  static const Field<ProductState, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);

  @override
  final MappableFields<ProductState> fields = const {
    #products: _f$products,
    #isLoading: _f$isLoading,
    #errorMessage: _f$errorMessage,
  };

  static ProductState _instantiate(DecodingData data) {
    return ProductState(
        products: data.dec(_f$products),
        isLoading: data.dec(_f$isLoading),
        errorMessage: data.dec(_f$errorMessage));
  }

  @override
  final Function instantiate = _instantiate;

  static ProductState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ProductState>(map);
  }

  static ProductState fromJson(String json) {
    return ensureInitialized().decodeJson<ProductState>(json);
  }
}

mixin ProductStateMappable {
  String toJson() {
    return ProductStateMapper.ensureInitialized()
        .encodeJson<ProductState>(this as ProductState);
  }

  Map<String, dynamic> toMap() {
    return ProductStateMapper.ensureInitialized()
        .encodeMap<ProductState>(this as ProductState);
  }

  ProductStateCopyWith<ProductState, ProductState, ProductState> get copyWith =>
      _ProductStateCopyWithImpl(this as ProductState, $identity, $identity);
  @override
  String toString() {
    return ProductStateMapper.ensureInitialized()
        .stringifyValue(this as ProductState);
  }

  @override
  bool operator ==(Object other) {
    return ProductStateMapper.ensureInitialized()
        .equalsValue(this as ProductState, other);
  }

  @override
  int get hashCode {
    return ProductStateMapper.ensureInitialized()
        .hashValue(this as ProductState);
  }
}

extension ProductStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ProductState, $Out> {
  ProductStateCopyWith<$R, ProductState, $Out> get $asProductState =>
      $base.as((v, t, t2) => _ProductStateCopyWithImpl(v, t, t2));
}

abstract class ProductStateCopyWith<$R, $In extends ProductState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, ProductModel,
      ProductModelCopyWith<$R, ProductModel, ProductModel>> get products;
  $R call(
      {List<ProductModel>? products, bool? isLoading, String? errorMessage});
  ProductStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ProductStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ProductState, $Out>
    implements ProductStateCopyWith<$R, ProductState, $Out> {
  _ProductStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ProductState> $mapper =
      ProductStateMapper.ensureInitialized();
  @override
  ListCopyWith<$R, ProductModel,
          ProductModelCopyWith<$R, ProductModel, ProductModel>>
      get products => ListCopyWith($value.products,
          (v, t) => v.copyWith.$chain(t), (v) => call(products: v));
  @override
  $R call(
          {List<ProductModel>? products,
          bool? isLoading,
          Object? errorMessage = $none}) =>
      $apply(FieldCopyWithData({
        if (products != null) #products: products,
        if (isLoading != null) #isLoading: isLoading,
        if (errorMessage != $none) #errorMessage: errorMessage
      }));
  @override
  ProductState $make(CopyWithData data) => ProductState(
      products: data.get(#products, or: $value.products),
      isLoading: data.get(#isLoading, or: $value.isLoading),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage));

  @override
  ProductStateCopyWith<$R2, ProductState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ProductStateCopyWithImpl($value, $cast, t);
}
