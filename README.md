# Système de Design de l'État - Flutter

Ce repository contient une implémentation Flutter du Système de Design de l'État sous la forme d'un package, ainsi qu'une application d'exemple de type "storybook".

## Licence et droit d'utilisation

Le contenu de ce projet est placé sous licence GPL-3, à l'exception de la fonte Marianne. Voir [LICENSE](LICENSE).

**⚠️ Utilisation interdite en dehors des sites Internet de l'État**

> Il est formellement interdit à tout autre acteur d’utiliser le Système de Design de l’État (les administrations territoriales ou tout autre acteur privé) pour des sites web ou des applications. Le Système de Design de l’État représente l’identité numérique de l’État. En cas d’usage à des fins trompeuses ou frauduleuses, l'État se réserve le droit d’entreprendre les actions nécessaires pour y mettre un terme.

En savoir plus avec [le DSFR web original](https://github.com/GouvernementFR/dsfr).

## Aperçu

Un aperçu de l'application d'exemple est déployé en [**version web**](https://octo-open-source.github.io/flutter-dsfr/) pour proposer un aperçu rapide.

**À noter :**
- Le déploiement web avec Flutter peut comporter des différences avec les versions mobiles.
- L'aperçu reflète les avancées actuelles des développements sur la branche *main*, et non de la dernière release.

Nous tenons également à jour un fichier avec la [liste des composants](components.md) et leurs avancements.

## Installation

### Ajout de la dépendance

Le package n'est actuellement pas publié sur pub.dev, mais il est possible d'ajouter la dépendance `flutter_dsfr` dans le fichier `pubspec.yaml` en spécifiant l'url de ce repository et le tag d'une release. Exemple :

```
dependencies:
  flutter_dsfr:
    git:
      url: https://github.com/Octo-Open-Source/flutter-dsfr.git
      ref: 0.4.0
```

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

### Flutter

Ce projet nécessite d'avoir installé Flutter sur son poste. La version actuelle est précisée dans le fichier `mise.toml`.

### Conventions

Voici les conventions à suivre pour contribuer :
- Nommage - On utilise un prefix "DSFR" + le nom anglais des composants indiqué sur le site du Design System.
- IDE - Longeur des lignes pour le formattage réglé à 120 caractères.
- Documentation - Le fichier [liste des composants](components.md) doit être mis à jour dans la même PR qui contient des nouveautés autour d'un composant.
- Commit - Usage de [Conventional Commits](https://www.conventionalcommits.org/) pour les messages de commit et pour les titres de PR.

### Création d'une release

- Faire un commit pour bump les numéro de versions
  - Modifier le numéro de version dans le fichier `pubspec.yaml`
  - Modifier le numéro de version dans le fichier `README.md`
- [Créer une nouvelle release](https://github.com/Octo-Open-Source/flutter-dsfr/releases) sur GitHub
  - Créer un tag avec le même numéro de version
  - Générer la release notes à partir des PRs

### Liens utiles

- [Premiers pas sur Figma (DSFR)](https://www.systeme-de-design.gouv.fr/prise-en-main-et-perimetre/designers/premiers-pas-sur-figma/)
- [Palette de couleurs (DSFR)](https://www.systeme-de-design.gouv.fr/fondamentaux/couleurs-palette/)
- [Utilisation des couleurs (DSFR)](https://www.systeme-de-design.gouv.fr/fondamentaux/couleurs-utilisation-dans-le-dsfr/)
- [Composants et modèles (DSFR)](https://www.systeme-de-design.gouv.fr/composants-et-modeles)
- [DSFR - Fondamentaux (Figma)](https://www.figma.com/community/file/1042832497184172837)
- [DSFR - Composants (Figma)](https://www.figma.com/community/file/1042832984468443942)

### Remerciements

Merci à Lucas Saudon qui a créé une première base de projet sur laquelle nous avons continué à implémenter le système de design.
