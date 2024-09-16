// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'response_data.dart';

class ResponseDataMapper extends ClassMapperBase<ResponseData> {
  ResponseDataMapper._();

  static ResponseDataMapper? _instance;
  static ResponseDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ResponseDataMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ResponseData';

  static List<dynamic> _$data(ResponseData v) => v.data;
  static const Field<ResponseData, List<dynamic>> _f$data =
      Field('data', _$data);

  @override
  final MappableFields<ResponseData> fields = const {
    #data: _f$data,
  };

  static ResponseData _instantiate(DecodingData data) {
    return ResponseData(data: data.dec(_f$data));
  }

  @override
  final Function instantiate = _instantiate;

  static ResponseData fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ResponseData>(map);
  }

  static ResponseData fromJson(String json) {
    return ensureInitialized().decodeJson<ResponseData>(json);
  }
}

mixin ResponseDataMappable {
  String toJson() {
    return ResponseDataMapper.ensureInitialized()
        .encodeJson<ResponseData>(this as ResponseData);
  }

  Map<String, dynamic> toMap() {
    return ResponseDataMapper.ensureInitialized()
        .encodeMap<ResponseData>(this as ResponseData);
  }

  ResponseDataCopyWith<ResponseData, ResponseData, ResponseData> get copyWith =>
      _ResponseDataCopyWithImpl(this as ResponseData, $identity, $identity);
  @override
  String toString() {
    return ResponseDataMapper.ensureInitialized()
        .stringifyValue(this as ResponseData);
  }

  @override
  bool operator ==(Object other) {
    return ResponseDataMapper.ensureInitialized()
        .equalsValue(this as ResponseData, other);
  }

  @override
  int get hashCode {
    return ResponseDataMapper.ensureInitialized()
        .hashValue(this as ResponseData);
  }
}

extension ResponseDataValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ResponseData, $Out> {
  ResponseDataCopyWith<$R, ResponseData, $Out> get $asResponseData =>
      $base.as((v, t, t2) => _ResponseDataCopyWithImpl(v, t, t2));
}

abstract class ResponseDataCopyWith<$R, $In extends ResponseData, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, dynamic, ObjectCopyWith<$R, dynamic, dynamic>> get data;
  $R call({List<dynamic>? data});
  ResponseDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ResponseDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ResponseData, $Out>
    implements ResponseDataCopyWith<$R, ResponseData, $Out> {
  _ResponseDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ResponseData> $mapper =
      ResponseDataMapper.ensureInitialized();
  @override
  ListCopyWith<$R, dynamic, ObjectCopyWith<$R, dynamic, dynamic>> get data =>
      ListCopyWith($value.data, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(data: v));
  @override
  $R call({List<dynamic>? data}) =>
      $apply(FieldCopyWithData({if (data != null) #data: data}));
  @override
  ResponseData $make(CopyWithData data) =>
      ResponseData(data: data.get(#data, or: $value.data));

  @override
  ResponseDataCopyWith<$R2, ResponseData, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ResponseDataCopyWithImpl($value, $cast, t);
}
