import 'package:injectable/injectable.dart';
import 'package:todos/src/di/di_name.dart';

@module
abstract class NamedModule {
  @Named(DiName.baseUrl)
  @dev
  String get devBaseUrl => 'https://run.mocky.io/v3/';

  @Named(DiName.baseUrl)
  @prod
  String get releaseBaseUrl => 'https://run.mocky.io/v3/';
}
