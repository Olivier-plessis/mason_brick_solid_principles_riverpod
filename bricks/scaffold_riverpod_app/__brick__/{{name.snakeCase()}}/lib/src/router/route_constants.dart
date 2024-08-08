enum AppPage {
  home,
}

extension AppPageExtension on AppPage {
  String get routePath {
    return switch (this) {
      AppPage.home => '/',
    };
  }

  String get routeName {
    return switch (this) {
      AppPage.home => 'HOME',
    };
  }
}
