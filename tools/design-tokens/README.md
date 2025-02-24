# Génération automatique des couleurs

## But

Ce script permet de générer l'ensemble des couleurs du Design System de l'État.

Il se base sur un export JSON du Figma des fondamentaux pour créer deux classes : une première regroupant toutes les couleurs, et une seconde regroupant les décisions (afin de faciliter la gestion du Light/Dark mode).

## Installation

Vous devez avoir Python 3 installé sur votre machine. 
Le script a été créé avec la version `3.13.1` (visible dans le fichier `mise.toml`).

## Utilisation

### Récupération du json

Le figma [DSFR - Fondamentaux - v1.13.0](https://www.figma.com/community/file/1042832497184172837) a été utilisé pour alimenter ce script. 

Pour exporter un JSON avec les styles contenant les couleurs, vous devez ouvrir le figma, vous rendre sur la page Couleurs, puis utiliser le plugin `Design Token`. Seul les "styles" sont à cocher dans le formulaire d'export.

Placez ensuite le fichier dans ce dossier (en cas de doute, le path est présent dans `main.py`).

### Lancement du script

Depuis la racine du projet, exécutez dans un terminal la commande :

`python tools/design-tokens/main.py`

## Phase de corrections

Le figma ayant parfois quelques erreurs, le script va essayer de les corriger et affichera un log.

Il existe actuellement deux types de corrections :
- Nom de couleur manquante. Une décision ne mentionne pas la couleur qui est utilisée mais seulement son code HEX. Le script va corriger en cherchant le nom de la couleur ayant un code HEX similaire.
- Couleur manquante. Une décision ne mentionne pas la couleur qui est utilisée et possède un code HEX qui ne correspond à aucune couleur. Le script va générer cette couleur pour que la décision puisse être ensuite créée.

## Anciennes versions

### Export depuis le site web

Un premier script avait été créé. Celui-ci se basait sur un parsing [de la palette sur le site web](https://www.systeme-de-design.gouv.fr/fondamentaux/couleurs-palette/). Il est fonctionnel, mais nous nous sommes rendus compte que la liste des couleurs et des décisions étaient incomplètes.

Il s'agit du script `old_generate_from_dsfr_website.py`.