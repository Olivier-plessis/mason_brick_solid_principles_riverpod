import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:{{appName.snakeCase()}}/src/feature/{{feature_name.snakeCase()}}/domain/entities/{{feature_name.snakeCase()}}.dart';
import 'package:{{appName.snakeCase()}}/src/feature/{{feature_name.snakeCase()}}/domain/repositories/{{feature_name.snakeCase()}}_repository.dart';


final class {{feature_name.pascalCase()}}RepositoryImpl implements I{{feature_name.pascalCase()}}Repository {
{{feature_name.pascalCase()}}RepositoryImpl();

  @override
  Future<Either<Left, {{feature_name.pascalCase()}}>> get{{feature_name.pascalCase()}}() async {
    try {
      // TODO change to your own api response
      final {{feature_name.pascalCase()}} response = 'response to api' as {{feature_name.pascalCase()}} ;

      return right(response);
    } on DioException catch (e) {
      return left(Left(e));
    }
  }
}
