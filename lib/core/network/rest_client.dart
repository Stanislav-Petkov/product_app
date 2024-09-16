import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:product_app/feature/product/data/repository/product_client.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;
}

@module
abstract class RestModule {
  @lazySingleton
  RestClient client(Dio dio) {
    return RestClient(dio);
  }

  @lazySingleton
  ProductClient chooseRoleClient(Dio dio) {
    return ProductClient(dio);
  }
}
