# riverpod_solid_principles

[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)

A new brick created with the Mason CLI.

## Getting Started 🚀

 **riverpod_solid_principles_brick**, lets you :

- Set-up a base Flutter project with **up-to-date dependencies**
- Customize the usage of Riverpod's ecosystem: codegen? hooks? freezed? We've got you covered
- Select your platforms (android, ios, ...)
- Use certain analysis customizations by default, with analysis_options.dart and flutter_lints (by default).
- For the example, this brick generates a counter and a dark/light theme selector managed on Riverpod.

### Dependency installed by default

Before anything, take a look @ [its depndencies](hooks/post/add_dependencies.dart).

And dev dependencies, take a look @ [its dev depndencies](hooks/post/add_dev_dependencies.dart).

## Installation

Once you have Mason installed,

you can add the **riverpod_solid_principles_brick** brick to the configuration by adding the following code to your **mason.yaml** file:

``` yaml
bricks:
  riverpod_solid_principles:
    git:
      url: 'https://github.com/Olivier-plessis/mason_brick_solid_principles_riverpod'
      path: 'bricks/riverpod_solid_principles_brick'
```

## Usage 🕹️

To use the **clean_architecture_feature_riverpod** brick, and generate code. You can run the following command in your terminal:

``` sh
mason get
```

and

``` sh
mason make riverpod_solid_principles
```

## Output 📦

``` sh
{{name}}/
├── lib/
│   ├── src
│   │   ├── common_widgets
│   │   │   ├── custom_appbar_widget.dart // just an exemple
│   │   ├── core
│   │   │   ├── theme
│   │       │   ├── dark_theme.dart
│   │       │   ├── light_theme.dart
│   │       │   ├── theme_mode_controller.dart
│   │   │   ├── utils
│   │       │   ├── dio_provider.dart
│   │       │   ├── logger_interceptor.dart
│   │       │   ├── observers.dart
│   │   └── features
│   │       ├── counter
│   │       │   ├── ├── presentation
│   │       │   │   ├──  ├── provider
│   │       │   ├──         ├── counter_provider.dart
│   │       │   ├── ├──  ├── counter_screen.dart
│   │   └── routing
│   │       ├── app_router.dart // go_router
│   │   └── app.dart
│   ├── main.dart
 ```

Follow the instructions in the prompt and **VOILA**, your app is now installed and configured.
