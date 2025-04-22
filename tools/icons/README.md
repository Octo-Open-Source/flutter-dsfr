# Mettre à jour les icônes

- Récupérer la dernières versions des icônes
    - La [page du DSFR](https://www.systeme-de-design.gouv.fr/fondamentaux/icone) indique que les icônes sont une sélection venant de [Remix Icon](https://remixicon.com/)
    - On peut les retrouver sur le repository de DSFR, dans [le dossier icon](https://github.com/GouvernementFR/dsfr/tree/main/src/dsfr/core/icon)
- Les placer dans le dossier `assets/icons/import`
- Lancer la génération
    - `dart run icon_font_generator:generator --config-file tools/icons/config.yml`