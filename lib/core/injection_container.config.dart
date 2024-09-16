// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../feature/product/data/repository/product_client.dart' as _i613;
import '../feature/product/data/repository/product_repository_impl.dart'
    as _i546;
import '../feature/product/domain/repository/product_repository.dart' as _i181;
import '../feature/product/presentation/cubit/product_cubit.dart' as _i78;
import 'network/dio_module.dart' as _i840;
import 'network/rest_client.dart' as _i55;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioModule = _$DioModule();
    final restModule = _$RestModule();
    gh.factory<String>(() => dioModule.apiUrl);
    gh.lazySingleton<_i361.Dio>(() => dioModule.dio());
    gh.lazySingleton<_i55.RestClient>(() => restModule.client(gh<_i361.Dio>()));
    gh.lazySingleton<_i613.ProductClient>(
        () => restModule.chooseRoleClient(gh<_i361.Dio>()));
    gh.lazySingleton<_i181.ProductRepository>(
        () => _i546.ProductRepositoryImpl(gh<_i613.ProductClient>()));
    gh.factory<_i78.ProductCubit>(
        () => _i78.ProductCubit(gh<_i181.ProductRepository>()));
    return this;
  }
}

class _$DioModule extends _i840.DioModule {}

class _$RestModule extends _i55.RestModule {}
