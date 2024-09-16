// import 'package:beauty_bestie/core/authentication/user_session_repository.dart';
// import 'package:beauty_bestie/core/constants.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

// import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:product_app/core/constants.dart';

@module
abstract class DioModule {
  final apiUrl = const String.fromEnvironment(
    EnvironmentKeys.apiUrl,
    defaultValue: Constants.urlWithApi,
  );

  @lazySingleton
  Dio dio() {
    final Dio dio = Dio(
      BaseOptions(
        baseUrl: apiUrl,
      ),
    );

    return dio;
  }
}
