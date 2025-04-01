import 'package:example/mise_en_page/page_section.dart';
import 'package:example/mise_en_page/page_sub_section.dart';
import 'package:example/page_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/components/sliders/range_slider.dart';
import 'package:flutter_dsfr/components/sliders/slider.dart';
import 'package:flutter_dsfr/helpers/dsfr_component_state.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  static final model = PageItem(
    title: 'Curseur',
    pageBuilder: (final context) => const SliderPage(),
  );

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _value = 0.5;
  RangeValues _rangeValues = RangeValues(0.25, 0.75);

  @override
  Widget build(final context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 98),
        child: Column(
          spacing: 32,
          children: [
            PageSection(
              title: "Curseurs simples",
              children: [
                PageSubSection(
                  title: "Actifs",
                  children: [
                    DsfrSlider.sm(
                      label: "Curseur SM",
                      value: _value,
                      onChanged: (final newValue) {
                        setState(() => _value = newValue);
                      },
                    ),
                    DsfrSlider.md(
                      label: "Curseur MD",
                      value: _value,
                      onChanged: (final newValue) {
                        setState(() => _value = newValue);
                      },
                    ),
                  ],
                ),
                PageSubSection(
                  title: "Avec description",
                  children: [
                    DsfrSlider.sm(
                      label: "Curseur SM",
                      description: "Texte de description additionnel",
                      value: _value,
                      onChanged: (final newValue) {
                        setState(() => _value = newValue);
                      },
                    ),
                    DsfrSlider.md(
                      label: "Curseur MD",
                      description: "Texte de description additionnel",
                      value: _value,
                      onChanged: (final newValue) {
                        setState(() => _value = newValue);
                      },
                    ),
                  ],
                ),
                PageSubSection(
                  title: "Avec label de valeur min et max",
                  children: [
                    DsfrSlider.sm(
                      label: "Curseur SM",
                      value: _value,
                      showMinMaxLabels: true,
                      onChanged: (final newValue) {
                        setState(() => _value = newValue);
                      },
                    ),
                    DsfrSlider.md(
                      label: "Curseur MD",
                      value: _value,
                      showMinMaxLabels: true,
                      onChanged: (final newValue) {
                        setState(() => _value = newValue);
                      },
                    ),
                  ],
                ),
                PageSubSection(
                  title: "Désactivés",
                  children: [
                    DsfrSlider.sm(
                      label: "Curseur SM",
                      enabled: false,
                      value: 0.25,
                    ),
                    DsfrSlider.md(
                      label: "Curseur MD",
                      enabled: false,
                      value: 0.35,
                    ),
                  ],
                ),
                PageSubSection(
                  title: "Désactivés avec description",
                  children: [
                    DsfrSlider.sm(
                      label: "Curseur SM",
                      description: "Texte de description additionnel, valeur de 0 à 100",
                      showMinMaxLabels: true,
                      enabled: false,
                      value: 0.77,
                    ),
                    DsfrSlider.md(
                      label: "Curseur MD",
                      description: "Texte de description additionnel, valeur de 0 à 100",
                      showMinMaxLabels: true,
                      enabled: false,
                      value: 0.88,
                    ),
                  ],
                ),
              ],
            ),
            PageSection(
              title: "Curseurs avec piste crantée",
              children: [
                PageSubSection(
                  title: "Actifs",
                  children: [
                    DsfrSlider.sm(
                      label: "Curseur SM",
                      value: _value,
                      division: 5,
                      showMinMaxLabels: true,
                      onChanged: (final newValue) {
                        setState(() => _value = newValue);
                      },
                    ),
                    DsfrSlider.md(
                      label: "Curseur MD",
                      value: _value,
                      division: 5,
                      showMinMaxLabels: true,
                      onChanged: (final newValue) {
                        setState(() => _value = newValue);
                      },
                    ),
                  ],
                ),
                PageSubSection(
                  title: "Désactivés",
                  children: [
                    DsfrSlider.sm(
                      label: "Curseur SM - désactivé piste crantée",
                      enabled: false,
                      value: 0.25,
                      division: 5,
                    ),
                    DsfrSlider.md(
                      label: "Curseur MD - désactivé piste crantée",
                      enabled: false,
                      value: 0.35,
                      division: 5,
                    ),
                  ],
                ),
              ],
            ),
            PageSection(
              title: "Gestion des états",
              children: [
                PageSubSection(
                  title: "En succès",
                  children: [
                    DsfrSlider.sm(
                      label: "Curseur SM",
                      value: _value,
                      componentState: DsfrComponentState.success(message: "Texte validation optionnel"),
                      onChanged: (final newValue) {
                        setState(() => _value = newValue);
                      },
                    ),
                    DsfrSlider.md(
                      label: "Curseur MD",
                      value: _value,
                      componentState: DsfrComponentState.success(message: "Texte validation optionnel"),
                      onChanged: (final newValue) {
                        setState(() => _value = newValue);
                      },
                    ),
                  ],
                ),
                PageSubSection(
                  title: "En erreur",
                  children: [
                    DsfrSlider.sm(
                      label: "Curseur",
                      value: _value,
                      componentState: DsfrComponentState.error(errorMessage: "Texte d'erreur obligatoire"),
                      onChanged: (final newValue) {
                        setState(() => _value = newValue);
                      },
                    ),
                    DsfrSlider.md(
                      label: "Curseur",
                      value: _value,
                      componentState: DsfrComponentState.error(errorMessage: "Texte d'erreur obligatoire"),
                      onChanged: (final newValue) {
                        setState(() => _value = newValue);
                      },
                    ),
                  ],
                )
              ],
            ),
            PageSection(
              title: "Curseurs doubles",
              children: [
                PageSubSection(
                  title: "Actifs",
                  children: [
                    DsfrRangeSlider.sm(
                      label: "Curseur SM",
                      values: _rangeValues,
                      onChanged: (final newValues) {
                        setState(() => _rangeValues = newValues);
                      },
                    ),
                    DsfrRangeSlider.md(
                      label: "Curseur MD",
                      values: _rangeValues,
                      onChanged: (final newValues) {
                        setState(() => _rangeValues = newValues);
                      },
                    ),
                  ],
                ),
                PageSubSection(
                  title: "Avec description",
                  children: [
                    DsfrRangeSlider.sm(
                      label: "Curseur SM",
                      description: "Texte de description additionnel",
                      values: _rangeValues,
                      onChanged: (final newValues) {
                        setState(() => _rangeValues = newValues);
                      },
                    ),
                    DsfrRangeSlider.md(
                      label: "Curseur MD",
                      description: "Texte de description additionnel",
                      values: _rangeValues,
                      onChanged: (final newValues) {
                        setState(() => _rangeValues = newValues);
                      },
                    ),
                  ],
                ),
                PageSubSection(
                  title: "Avec label de valeur min et max",
                  children: [
                    DsfrRangeSlider.sm(
                      label: "Curseur SM",
                      values: _rangeValues,
                      showMinMaxLabels: true,
                      onChanged: (final newValues) {
                        setState(() => _rangeValues = newValues);
                      },
                    ),
                    DsfrRangeSlider.md(
                      label: "Curseur MD",
                      values: _rangeValues,
                      showMinMaxLabels: true,
                      onChanged: (final newValues) {
                        setState(() => _rangeValues = newValues);
                      },
                    ),
                  ],
                ),
                PageSubSection(
                  title: "Désactivés",
                  children: [
                    DsfrRangeSlider.sm(
                      label: "Curseur SM",
                      enabled: false,
                      values: RangeValues(0.20, 0.45),
                    ),
                    DsfrRangeSlider.md(
                      label: "Curseur MD",
                      enabled: false,
                      values: RangeValues(0.35, 0.65),
                    ),
                  ],
                ),
                PageSubSection(
                  title: "Désactivés avec description",
                  children: [
                    DsfrRangeSlider.sm(
                      label: "Curseur SM",
                      description: "Texte de description additionnel, valeur de 0 à 100",
                      showMinMaxLabels: true,
                      enabled: false,
                      values: RangeValues(0.12, 0.77),
                    ),
                    DsfrRangeSlider.md(
                      label: "Curseur MD",
                      description: "Texte de description additionnel, valeur de 0 à 100",
                      showMinMaxLabels: true,
                      enabled: false,
                      values: RangeValues(0.05, 0.88),
                    ),
                  ],
                ),
              ],
            ),
            PageSection(
              title: "Curseurs doubles avec piste crantée",
              children: [
                PageSubSection(
                  title: "Actifs",
                  children: [
                    DsfrRangeSlider.sm(
                      label: "Curseur SM",
                      values: _rangeValues,
                      division: 5,
                      showMinMaxLabels: true,
                      onChanged: (final newValues) {
                        setState(() => _rangeValues = newValues);
                      },
                    ),
                    DsfrRangeSlider.md(
                      label: "Curseur MD",
                      values: _rangeValues,
                      division: 5,
                      showMinMaxLabels: true,
                      onChanged: (final newValues) {
                        setState(() => _rangeValues = newValues);
                      },
                    ),
                  ],
                ),
                PageSubSection(
                  title: "Désactivés",
                  children: [
                    DsfrRangeSlider.sm(
                      label: "Curseur SM",
                      enabled: false,
                      values: RangeValues(0.25, 0.75),
                      division: 5,
                    ),
                    DsfrRangeSlider.md(
                      label: "Curseur MD",
                      enabled: false,
                      values: RangeValues(0.15, 0.85),
                      division: 5,
                    ),
                  ],
                ),
              ],
            ),
            PageSection(
              title: "Curseurs doubles - Gestion des états",
              children: [
                PageSubSection(
                  title: "En succès",
                  children: [
                    DsfrRangeSlider.sm(
                      label: "Curseur",
                      values: _rangeValues,
                      componentState: DsfrComponentState.success(message: "Texte validation optionnel"),
                      onChanged: (final newValues) {
                        setState(() => _rangeValues = newValues);
                      },
                    ),
                    DsfrRangeSlider.md(
                      label: "Curseur",
                      values: _rangeValues,
                      componentState: DsfrComponentState.success(message: "Texte validation optionnel"),
                      onChanged: (final newValues) {
                        setState(() => _rangeValues = newValues);
                      },
                    ),
                  ],
                ),
                PageSubSection(
                  title: "En erreur",
                  children: [
                    DsfrRangeSlider.sm(
                      label: "Curseur SM",
                      values: _rangeValues,
                      componentState: DsfrComponentState.error(errorMessage: "Texte d'erreur obligatoire"),
                      onChanged: (final newValues) {
                        setState(() => _rangeValues = newValues);
                      },
                    ),
                    DsfrRangeSlider.md(
                      label: "Curseur MD",
                      values: _rangeValues,
                      componentState: DsfrComponentState.error(errorMessage: "Texte d'erreur obligatoire"),
                      onChanged: (final newValues) {
                        setState(() => _rangeValues = newValues);
                      },
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
