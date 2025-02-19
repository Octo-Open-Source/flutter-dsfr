# Système de Design de l'État - Flutter

Ce repository contient une implémentation Flutter du Système de Design de l'État sous la forme d'un package, ainsi qu'une application d'exemple de type "storybook".

## Installation

### Récupération des polices

Vous devez récupérer les polices Marianne et les mettre dans le dossier `lib/assets/fonts`. Les fonts nécessaires sont visibles dans le fichier `pubspec.yaml`.

### Gestion du thème

Le Design Système gère deux thèmes : un thème clair et un sombre. Il faut cependant indiquer à la librairie dans quel thème elle doit dessiner ses widgets.

Pour cela, vous devez ajouter le widget `ThemeModeProvider` en parent de votre widget `MaterialApp` et indiquer dans la propriété `isLightMode` si le thème actuel est le thème clair.

Vous avez donc la flexibilité de gérer le changement de thème comme vous le souhaitez (seulement basé sur le choix du système ou basé sur une personnalisation dans l'app).

Voici un exemple qui est basé sur le thème du système :


```dart
@override
Widget build(final context) {
    return ThemeModeProvider.withBuilder(
        isLightMode: MediaQuery.platformBrightnessOf(context) == Brightness.light,
        builder: (context) {
            return MaterialApp(
                // ...
            );
        }
    );
}
```

## Contribution

### Conventions

Voici les conventions à suivre pour contribuer :
- Usage de [Conventional Commits](https://www.conventionalcommits.org/) pour les messages de commit et pour les titres de PR.

### Liens utiles

- [Premiers pas sur Figma (DSFR)](https://www.systeme-de-design.gouv.fr/prise-en-main-et-perimetre/designers/premiers-pas-sur-figma/)
- [Palette de couleurs (DSFR)](https://www.systeme-de-design.gouv.fr/fondamentaux/couleurs-palette/)
- [Utilisation des couleurs (DSFR)](https://www.systeme-de-design.gouv.fr/fondamentaux/couleurs-utilisation-dans-le-dsfr/)
- [Composants et modèles (DSFR)](https://www.systeme-de-design.gouv.fr/composants-et-modeles)
- [DSFR - Fondamentaux (Figma)](https://www.figma.com/community/file/1042832497184172837)
- [DSFR - Composants (Figma)](https://www.figma.com/community/file/1042832984468443942)
