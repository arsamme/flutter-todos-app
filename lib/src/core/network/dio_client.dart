import 'dart:io';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:todos/src/core/errors/exceptions/connection_exception.dart';
import 'package:todos/src/core/errors/exceptions/server_exception.dart';
import 'package:todos/src/di/di_name.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

const _defaultConnectTimeout = Duration.millisecondsPerMinute;
const _defaultReceiveTimeout = Duration.millisecondsPerMinute;

@injectable
class DioClient {
  DioClient(@Named(DiName.baseUrl) String baseUrl) {
    _init(baseUrl: baseUrl);
  }

  final Dio _dio = Dio();

  _init({required String baseUrl}) {
    if (!kIsWeb) {
      _dio.httpClientAdapter = DefaultHttpClientAdapter()
        ..onHttpClientCreate = (HttpClient httpClient) {
          httpClient.badCertificateCallback =
              (X509Certificate cert, String host, int port) => true;
        };
    }
    _dio.options.baseUrl = baseUrl;
    _dio.options.contentType = 'application/x-www-form-urlencoded';
    _dio.options.connectTimeout = _defaultConnectTimeout;
    _dio.options.receiveTimeout = _defaultReceiveTimeout;

    if (kDebugMode) {
      _dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          maxWidth: 1000,
        ),
      );
    }
  }

  Future<Response<T>?> get<T>(
    String uri, {
    bool authorized = true,
    String? authorizationToken,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Options requestOptions = options ?? Options();
      requestOptions.headers ??= {};

      if (authorized) {
        if (authorizationToken != null && authorizationToken.isNotEmpty) {
          requestOptions.headers?['Authorization'] = authorizationToken;
        }
      }

      queryParameters ??= {};

      return await _dio.get<T>(
        uri,
        queryParameters: queryParameters,
        options: requestOptions,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
    } on Exception catch (e) {
      print(e);
      _handleException(e);
    }
  }

  Future<Response<T>?> post<T>(
    String uri, {
    bool authorized = true,
    data,
    String? authorizationToken,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Options requestOptions = options ?? Options();
      requestOptions.headers ??= {};

      if (authorized) {
        if (authorizationToken != null && authorizationToken.isNotEmpty) {
          requestOptions.headers!['Authorization'] = authorizationToken;
        }
      }

      data ??= {};

      return await _dio.post<T>(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: requestOptions,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
    } on Exception catch (e) {
      _handleException(e);
    }
  }

  Future<Response<T>?> put<T>(
    String uri, {
    bool authorized = true,
    data,
    String? authorizationToken,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Options requestOptions = options ?? Options();
      requestOptions.headers ??= {};

      if (authorized) {
        if (authorizationToken != null && authorizationToken.isNotEmpty) {
          requestOptions.headers!['Authorization'] = authorizationToken;
        }
      }

      data ??= {};

      return await _dio.put<T>(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: requestOptions,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
    } on Exception catch (e) {
      _handleException(e);
    }
  }

  Future<Response<T>?> patch<T>(
    String uri, {
    bool authorized = true,
    data,
    String? authorizationToken,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Options requestOptions = options ?? Options();
      requestOptions.headers ??= {};

      if (authorized) {
        if (authorizationToken != null && authorizationToken.isNotEmpty) {
          requestOptions.headers!['Authorization'] = authorizationToken;
        }
      }

      data ??= {};

      return await _dio.patch<T>(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: requestOptions,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
    } on Exception catch (e) {
      _handleException(e);
    }
  }

  Future<Response<T>?> delete<T>(
    String uri, {
    bool authorized = true,
    data,
    String? authorizationToken,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      final Options requestOptions = options ?? Options();
      requestOptions.headers ??= {};

      if (authorized) {
        if (authorizationToken != null && authorizationToken.isNotEmpty) {
          requestOptions.headers!['Authorization'] = authorizationToken;
        }
      }

      data ??= {};

      return await _dio.delete<T>(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: requestOptions,
        cancelToken: cancelToken,
      );
    } on Exception catch (e) {
      _handleException(e);
    }
  }

  void _handleException(Exception exception) {
    if (exception is DioError && exception.error != null) {
      final error = exception.error;
      if (error is Map<String, dynamic> && error.containsKey('type')) {
        final type = error['type'];
        if (type == 'connection') {
          throw ConnectionException();
        }
      }

      if (exception.type == DioErrorType.response) {
        String? message;
        if (exception.response?.data['error']['msg'] != null) {
          message = exception.response?.data['error']['msg'];
        }
        throw ServerException(
          code: exception.response?.statusCode,
          message: message,
        );
      }
    }
    throw exception;
  }
}
