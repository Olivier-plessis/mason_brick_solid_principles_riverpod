import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:{{name.snakeCase()}}/src/core/utils/logger_interceptor.dart';

{{#codegen}}
part '../../../../../../../riverpod_solid_principles_brick/__brick__/{{name.snakeCase()}}/lib/src/core/utils/dio_provider.g.dart';
{{/codegen}}

// TODO replace with your api url or create .env
const baseUrl = 'some-url';

{{#codegen}}
@riverpod
Dio dio(DioRef ref) {
  final Dio dio = Dio(BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: const Duration(milliseconds: 30000),
    receiveTimeout: const Duration(milliseconds: 30000),
    headers: {'Accept': 'application/json', 'Content-Type': 'application/json'},
  ));
  dio.interceptors.add(LoggerInterceptor());
  return dio;
}
{{/codegen}}
