{{#codegen}}
import 'package:riverpod_annotation/riverpod_annotation.dart';
{{/codegen}}

{{#codegen}}
part '../../../../../riverpod_clean_archi/__brick__/{{feature_name.snakeCase()}}/presentation/provider/{{feature_name.snakeCase()}}_provider.g.dart';
@riverpod
class {{feature_name.pascalCase()}} extends _${{feature_name.pascalCase()}} {
    @override
    int build() => 0;

    @override
    set state(int newState) => super.state = newState;

    int update(int Function(int state) cb) {
      if (cb(state) >= 0) {
        return state = cb(state);
      }
    return 0;
  }
}
{{/codegen}}
