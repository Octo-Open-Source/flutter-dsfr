# Dsfr Lints

## Installation

Il est nécessaire d'ajouter le package `custom_lint` en tant que `dev_dependencies` dans le fichier `pubspec.yaml` du projet, ainsi que ce package `dsfr_lints` :

```
dev_dependencies:
  custom_lint:
  dsfr_lints:
```

Ensuite, il faut modifier le fichier `analysis_options.yaml` du projet pour ajouter custom_lint :

```
analyzer:
  plugins:
    - custom_lint
```

Plus d'informations sur le [README de custom_lint](https://github.com/invertase/dart_custom_lint).

## Ressources

- https://pub.dev/documentation/analyzer/latest/dart_ast_ast/
- https://github.com/invertase/dart_custom_lint
- https://charlescyt.github.io/create-your-own-lint-rules-with-custom-lint