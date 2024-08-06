import 'package:dartz/dartz.dart';
import 'package:{{appName.snakeCase()}}/src/features/{{feature_name.snakeCase()}}/domain/entities/{{feature_name.snakeCase()}}.dart';

abstract class I{{feature_name.pascalCase()}}Repository {
  Future<Either<Left, {{feature_name.pascalCase()}}>> get{{feature_name.pascalCase()}}();
}
