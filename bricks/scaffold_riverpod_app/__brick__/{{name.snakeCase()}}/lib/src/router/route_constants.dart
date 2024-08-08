enum AppPage {
  home,
  {{#each feature}}
  {{this}},
  {{/each}}
}

extension AppPageExtension on AppPage {
  String get routePath {
    return switch (this) {
      AppPage.home =>'/',
      {{#each feature}}
      AppPage.{{this.snakeCase()}} =>'/{{this.snakeCase()}}';
      {{/each}}
    }
  }
}