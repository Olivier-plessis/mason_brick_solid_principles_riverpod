{{#codegen}}
import 'package:riverpod_annotation/riverpod_annotation.dart';
{{/codegen}}
{{^codegen}}
{{#hooks}}
import 'package:hooks_riverpod/hooks_riverpod.dart';
{{/hooks}}
{{^hooks}}
import 'package:flutter_riverpod/flutter_riverpod.dart';
{{/hooks}}
{{/codegen}}

{{#codegen}}
part 'counter_provider.g.dart';
@riverpod
class CounterNotifier extends _$CounterNotifier {
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
