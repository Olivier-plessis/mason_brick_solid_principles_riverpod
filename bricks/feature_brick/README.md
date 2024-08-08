# feature_brick

[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)

A new brick created with the Mason CLI.

## Important Note

This brick works best with [this other brick](https://github.com/Olivier-plessis/mason_brick_solid_principles_riverpod/blob/main/bricks/riverpod_solid_principles_brick/README.md), that sets up the architecture mentioned above. It also prepares the ground for you to set up code generation, layering, etc.

### Folder architecture is based on solid principles

<p align="center">
<img src="https://miro.medium.com/v2/resize:fit:4800/format:webp/0*1w080Y72qaOdoC3W.png" height="525" alt="mason logo" />
</p>

## Installation 🚀

Once you have Mason installed,

you can add the **feature_brick** brick to the configuration by adding the following code to your **mason.yaml** file:

``` yaml
bricks:
  feature_brick:
    git:
      url: 'https://github.com/Olivier-plessis/mason_brick_solid_principles_riverpod'
      path: 'bricks/feature_brick'
```

## Usage 🕹️

To use the **feature_brick** brick, and generate code. You can run the following command in your terminal:

``` sh
mason get
```

and

``` sh
mason make feature_brick
```

## Important Note to use it

**On the first prompt, add the name of your app**

## Output 📦

``` sh
lib/
├── feature
│   ├── {{feature_name}}
│   │   ├── data
│   │   │   ├── sources
│   │       │   ├── // add your own logic
│   │   │   └── repositories
│   │       │   ├── {{feature_name}}_repository_impl.dart
│   │   ├── domain
│   │   │   ├── entities
│   │       │   ├── {{feature_name}}.dart
│   │   │   ├── repositories
│   │       │   ├── {{feature_name}}_repository.dart
│   │   └── presentation
│   │       ├── components
│   │       │   ├── {{feature_name}}_widget.dart
│   │       ├── pages
│   │       │   ├── {{feature_name}}_screen.dart
│   │       ├── providers
│   │       │   ├── {{feature_name}}_provider.dart
 ```

Follow the instructions in the prompt and **VOILA**.
