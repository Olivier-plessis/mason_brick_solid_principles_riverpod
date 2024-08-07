{{#freezed}}
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../../riverpod_clean_archi/__brick__/{{feature_name.snakeCase()}}/domain/model/{{feature_name.snakeCase()}}.freezed.dart';
part '../../../../../riverpod_clean_archi/__brick__/{{feature_name.snakeCase()}}/domain/model/{{feature_name.snakeCase()}}.g.dart';

@freezed
class {{feature_name.pascalCase()}} with _${{feature_name.pascalCase()}} {
  factory {{feature_name.pascalCase()}}(
  // TODO add params here
  ) = _{{feature_name.pascalCase()}};
  factory {{feature_name.pascalCase()}}.fromJson(Map<String, Object?> json) => _${{feature_name.pascalCase()}}FromJson(json);
}
{{/freezed}}
