import 'package:mason/mason.dart';

import 'pre/get_project_info.dart';

void run(HookContext context) async {
  await getProjectInfo(context);
}
