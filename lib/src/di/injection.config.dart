// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../core/network/dio_client.dart' as _i4;
import '../features/todo_list/data/datasources/remote/impl/todo_remote_data_source_impl.dart'
    as _i6;
import '../features/todo_list/data/datasources/remote/todo_remote_data_source.dart'
    as _i5;
import '../features/todo_list/data/repositories/todo_repository_impl.dart'
    as _i8;
import '../features/todo_list/domain/repositories/todo_repository.dart' as _i7;
import '../features/todo_list/domain/usecases/get_todos_usecase.dart' as _i9;
import '../features/todo_list/presentation/controllers/todo_list_bloc/todo_list_cubit.dart'
    as _i10;
import 'modules/external_module.dart' as _i11;
import 'modules/named_module.dart' as _i12;

const String _dev = 'dev';
const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final externalModule = _$ExternalModule();
  final namedModule = _$NamedModule();
  gh.lazySingleton<_i3.Dio>(() => externalModule.dio());
  gh.factory<String>(() => namedModule.devBaseUrl,
      instanceName: 'BaseUrl', registerFor: {_dev});
  gh.factory<String>(() => namedModule.releaseBaseUrl,
      instanceName: 'BaseUrl', registerFor: {_prod});
  gh.factory<_i4.DioClient>(
      () => _i4.DioClient(get<String>(instanceName: 'BaseUrl')));
  gh.lazySingleton<_i5.TodoRemoteDataSource>(
      () => _i6.TodoRemoteDataSourceImpl(get<_i4.DioClient>()));
  gh.lazySingleton<_i7.TodoRepository>(
      () => _i8.TodoRepositoryImpl(get<_i5.TodoRemoteDataSource>()));
  gh.lazySingleton<_i9.GetTodosUseCase>(
      () => _i9.GetTodosUseCase(get<_i7.TodoRepository>()));
  gh.factory<_i10.TodoListCubit>(
      () => _i10.TodoListCubit(get<_i9.GetTodosUseCase>()));
  return get;
}

class _$ExternalModule extends _i11.ExternalModule {}

class _$NamedModule extends _i12.NamedModule {}
