import 'package:dart_mappable/dart_mappable.dart';

part 'response_data.mapper.dart';

@MappableClass()
class ResponseData with ResponseDataMappable {
  ResponseData({
    required this.data,
  });

  final List<dynamic> data;

  static const fromJson = ResponseDataMapper.fromMap;
}
