import 'package:example/mise_en_page/page_section.dart';
import 'package:example/mise_en_page/page_sub_section.dart';
import 'package:example/page_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';

class RadiosPage extends StatefulWidget {
  const RadiosPage({super.key});

  static final model = PageItem(title: 'Bouton Radio', pageBuilder: (final context) => const RadiosPage());

  @override
  State<RadiosPage> createState() => _RadiosPageState();
}

class _RadiosPageState extends State<RadiosPage> {
  int _value = 0;

  @override
  Widget build(final context) => Padding(
    padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 100),
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 40,
        children: [
          PageSection(
            title: "Bouton Radio",
            children: [
              PageSubSection(
                title: "Actifs",
                children: [
                  DsfrRadioButton(
                    label: 'Bouton Radio - SM',
                    value: 0,
                    groupValue: _value,
                    onChanged: (final value) {
                      if (value != null) {
                        setState(() => _value = value);
                      }
                    },
                    size: DsfrComponentSize.sm,
                  ),
                  DsfrRadioButton(
                    label: 'Bouton Radio - MD',
                    value: 1,
                    groupValue: _value,
                    onChanged: (final value) {
                      if (value != null) {
                        setState(() => _value = value);
                      }
                    },
                    size: DsfrComponentSize.md,
                  ),
                ],
              ),
              PageSubSection(
                title: "Avec description",
                children: [
                  DsfrRadioButton(
                    label: 'Bouton Radio - SM',
                    description: "Texte de description additionnel",
                    value: 2,
                    groupValue: _value,
                    onChanged: (final value) {
                      if (value != null) {
                        setState(() => _value = value);
                      }
                    },
                    size: DsfrComponentSize.sm,
                  ),
                  DsfrRadioButton(
                    label: 'Bouton Radio - MD',
                    description: "Texte de description additionnel",
                    value: 3,
                    groupValue: _value,
                    onChanged: (final value) {
                      if (value != null) {
                        setState(() => _value = value);
                      }
                    },
                    size: DsfrComponentSize.md,
                  ),
                ],
              ),
              PageSubSection(
                title: "Désactivés",
                children: [
                  DsfrRadioButton(
                    label: 'Bouton Radio - SM',
                    value: 4,
                    groupValue: _value,
                    enabled: false,
                    size: DsfrComponentSize.sm,
                  ),
                  DsfrRadioButton(
                    label: 'Bouton Radio - SM',
                    value: 6,
                    groupValue: 6,
                    enabled: false,
                    size: DsfrComponentSize.sm,
                  ),
                  DsfrRadioButton(
                    label: 'Bouton Radio - MD',
                    value: 5,
                    groupValue: _value,
                    enabled: false,
                    size: DsfrComponentSize.md,
                  ),
                  DsfrRadioButton(
                    label: 'Bouton Radio - MD',
                    value: 7,
                    groupValue: 7,
                    enabled: false,
                    size: DsfrComponentSize.md,
                  ),
                ],
              ),
            ],
          ),
          PageSection(
            title: "Gestion des états",
            children: [
              PageSubSection(
                title: "Succès",
                children: [
                  DsfrRadioButton(
                    label: 'Bouton Radio - SM',
                    value: 8,
                    groupValue: _value,
                    componentState: DsfrComponentState.success(message: "Texte de validation optionnel"),
                    onChanged: (final value) {
                      if (value != null) {
                        setState(() => _value = value);
                      }
                    },
                    size: DsfrComponentSize.sm,
                  ),
                  DsfrRadioButton(
                    label: 'Bouton Radio - MD',
                    value: 9,
                    groupValue: _value,
                    componentState: DsfrComponentState.success(message: "Texte de validation optionnel"),
                    onChanged: (final value) {
                      if (value != null) {
                        setState(() => _value = value);
                      }
                    },
                    size: DsfrComponentSize.md,
                  ),
                ],
              ),
              PageSubSection(
                title: "Erreur",
                children: [
                  DsfrRadioButton(
                    label: 'Bouton Radio - SM',
                    value: 10,
                    groupValue: _value,
                    componentState: DsfrComponentState.error(errorMessage: "Texte d'erreur obligatoire"),
                    onChanged: (final value) {
                      if (value != null) {
                        setState(() => _value = value);
                      }
                    },
                    size: DsfrComponentSize.sm,
                  ),
                  DsfrRadioButton(
                    label: 'Bouton Radio - MD',
                    value: 11,
                    groupValue: _value,
                    componentState: DsfrComponentState.error(errorMessage: "Texte d'erreur obligatoire"),
                    onChanged: (final value) {
                      if (value != null) {
                        setState(() => _value = value);
                      }
                    },
                    size: DsfrComponentSize.md,
                  ),
                ],
              ),
            ],
          ),
          PageSection(
            title: "Gestion des groupes",
            children: [
              PageSubSection(
                title: "Groupe simple",
                children: [
                  DsfrRadioButtonGroup.simple(
                    title: 'Légende',
                    values: const {1: 'Un', 2: 'Deux', 3: 'Trois'},
                    onCallback: (final value) {},
                    size: DsfrComponentSize.sm,
                  ),
                  Divider(height: 1),
                  DsfrRadioButtonGroup.simple(
                    title: 'Légende',
                    description: 'Description optionnelle',
                    values: const {1: 'Un', 2: 'Deux', 3: 'Trois'},
                    onCallback: (final value) {},
                    size: DsfrComponentSize.sm,
                  ),
                  Divider(height: 1),
                  DsfrRadioButtonGroup.simple(
                    title: 'en horizontal',
                    description: 'Description optionnelle',
                    values: const {1: 'Un', 2: 'Deux', 3: 'Trois'},
                    onCallback: (final value) {},
                    size: DsfrComponentSize.sm,
                    direction: Direction.horizontal,
                  ),
                ],
              ),
              PageSubSection(
                title: 'Succès',
                children: [
                  DsfrRadioButtonGroup.simple(
                    title: 'Légende',
                    values: const {1: 'Un', 2: 'Deux', 3: 'Trois'},
                    onCallback: (final value) {},
                    size: DsfrComponentSize.sm,
                    componentState: DsfrComponentState.success(message: 'Texte de validation optionnel'),
                  ),
                ],
              ),
              PageSubSection(
                title: 'Erreur',
                children: [
                  DsfrRadioButtonGroup.simple(
                    title: 'Légende',
                    values: const {1: 'Un', 2: 'Deux', 3: 'Trois'},
                    onCallback: (final value) {},
                    size: DsfrComponentSize.sm,
                    componentState: DsfrComponentState.error(errorMessage: 'Texte obligatoire'),
                  ),
                ],
              ),
              PageSubSection(
                title: 'Désactivé',
                children: [
                  DsfrRadioButtonGroup.simple(
                    title: 'Légende',
                    values: const {1: 'Un', 2: 'Deux', 3: 'Trois'},
                    onCallback: (final value) {},
                    size: DsfrComponentSize.sm,
                    enabled: false,
                  ),
                ],
              ),
              PageSubSection(
                title: 'Avec des description',
                children: [
                  DsfrGroup<DsfrRadioButton>(
                    label: 'Bouton radios avec des descriptions',
                    description: 'description du groupe',
                    children: [
                      DsfrRadioButton(
                        label: 'Bouton Un',
                        description: 'description du bouton un',
                        value: 8,
                        groupValue: _value,
                        onChanged: (final value) {
                          if (value != null) {
                            setState(() => _value = value);
                          }
                        },
                        size: DsfrComponentSize.sm,
                      ),
                      DsfrRadioButton(
                        label: 'Bouton Deux',
                        description: 'description du bouton deux',
                        value: 9,
                        groupValue: _value,
                        onChanged: (final value) {
                          if (value != null) {
                            setState(() => _value = value);
                          }
                        },
                        size: DsfrComponentSize.sm,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
