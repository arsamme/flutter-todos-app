import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ExternalModule {
  @lazySingleton
  Dio dio() => Dio();
}
