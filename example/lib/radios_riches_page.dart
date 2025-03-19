import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:example/page_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/helpers/composant_state.dart';

class RadiosRichesPage extends StatefulWidget {
  const RadiosRichesPage({super.key});

  static final model = PageItem(
    title: 'Bouton Radio Riche',
    pageBuilder: (final context) => const RadiosRichesPage(),
  );

  @override
  State<RadiosRichesPage> createState() => _RadiosRichesPageState();
}

class _RadiosRichesPageState extends State<RadiosRichesPage> {
  int _value = 0;

  @override
  Widget build(final context) => ListView(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 98),
        children: [
          DsfrGroup(
            label: 'Radios riches',
            direction: Direction.horizontal,
            children: [
              DsfrRadioRichButton<int>(
                title: 'Un',
                value: 1,
                groupValue: _value,
                onChanged: (final value) {
                  if (value != null) {
                    setState(() {
                      _value = value;
                    });
                  }
                },
              ),
              DsfrRadioRichButton<int>(
                title: 'Deux',
                value: 2,
                groupValue: _value,
                onChanged: (final value) {
                  if (value != null) {
                    setState(() {
                      _value = value;
                    });
                  }
                },
              ),
              DsfrRadioRichButton<int>(
                title: 'Trois',
                value: 3,
                groupValue: _value,
                onChanged: (final value) {
                  if (value != null) {
                    setState(() {
                      _value = value;
                    });
                  }
                },
              ),
            ],
          ),
          const SizedBox(height: DsfrSpacings.s3w),
          DsfrRadioRichButton<int>(
            title: 'Un',
            value: 0,
            groupValue: _value,
            onChanged: (final value) {
              if (value != null) {
                setState(() {
                  _value = value;
                });
              }
            },
          ),
          const SizedBox(height: DsfrSpacings.s1w),
          DsfrRadioRichButton<int>(
            title: 'Deux',
            value: 1,
            groupValue: _value,
            onChanged: (final value) {
              if (value != null) {
                setState(() {
                  _value = value;
                });
              }
            },
          ),
          const SizedBox(height: DsfrSpacings.s1w),
          DsfrRadioRichButton<int>(
            title: 'Trois',
            value: 2,
            groupValue: _value,
            onChanged: (final value) {
              if (value != null) {
                setState(() {
                  _value = value;
                });
              }
            },
          ),
          const SizedBox(height: DsfrSpacings.s1w),
          DsfrRadioRichButton<int>(
            title: 'Quatre',
            value: 3,
            groupValue: _value,
            onChanged: (final value) {
              if (value != null) {
                setState(() {
                  _value = value;
                });
              }
            },
            enabled: false,
          ),
          const SizedBox(height: DsfrSpacings.s1w),
          DsfrRadioRichButton<int>(
            title: 'Avec description',
            description: 'Une description optionnelle',
            value: 4,
            groupValue: _value,
            onChanged: (final value) {
              if (value != null) {
                setState(() {
                  _value = value;
                });
              }
            },
          ),
          const SizedBox(height: DsfrSpacings.s1w),
          DsfrRadioRichButton<int>(
            title: 'Avec icon',
            trailingIcon: Icon(Icons.ac_unit_rounded, size: 32),
            value: 5,
            groupValue: _value,
            onChanged: (final value) {
              if (value != null) {
                setState(() {
                  _value = value;
                });
              }
            },
          ),
          const SizedBox(height: DsfrSpacings.s1w),
          DsfrRadioRichButton<int>(
            title: 'Avec icon et description',
            description: 'Une description optionnelle',
            trailingIcon: Icon(Icons.access_alarm_rounded, size: 32),
            value: 6,
            groupValue: _value,
            onChanged: (final value) {
              if (value != null) {
                setState(() {
                  _value = value;
                });
              }
            },
          ),
          const SizedBox(height: DsfrSpacings.s3w),
          DsfrGroup(
            label: 'Radios riches en erreur',
            composantState: DsfrComposantState.error(errorMessage: 'Texte d\'erreur obligatoire'),
            direction: Direction.horizontal,
            children: [
              DsfrRadioRichButton<int>(
                title: 'Un',
                value: 1,
                groupValue: _value,
                onChanged: (final value) {
                  if (value != null) {
                    setState(() {
                      _value = value;
                    });
                  }
                },
              ),
              DsfrRadioRichButton<int>(
                title: 'Deux',
                value: 2,
                groupValue: _value,
                onChanged: (final value) {
                  if (value != null) {
                    setState(() {
                      _value = value;
                    });
                  }
                },
              ),
              DsfrRadioRichButton<int>(
                title: 'Trois',
                value: 3,
                groupValue: _value,
                onChanged: (final value) {
                  if (value != null) {
                    setState(() {
                      _value = value;
                    });
                  }
                },
              ),
            ],
          ),
          const SizedBox(height: DsfrSpacings.s3w),
          DsfrGroup(
            label: 'Radios riches en succès',
            composantState: DsfrComposantState.success(message: 'Texte de succès optionnel'),
            direction: Direction.horizontal,
            children: [
              DsfrRadioRichButton<int>(
                title: 'Un',
                value: 1,
                groupValue: _value,
                onChanged: (final value) {
                  if (value != null) {
                    setState(() {
                      _value = value;
                    });
                  }
                },
              ),
              DsfrRadioRichButton<int>(
                title: 'Deux',
                value: 2,
                groupValue: _value,
                onChanged: (final value) {
                  if (value != null) {
                    setState(() {
                      _value = value;
                    });
                  }
                },
              ),
              DsfrRadioRichButton<int>(
                title: 'Trois',
                value: 3,
                groupValue: _value,
                onChanged: (final value) {
                  if (value != null) {
                    setState(() {
                      _value = value;
                    });
                  }
                },
              ),
            ],
          ),
          const SizedBox(height: DsfrSpacings.s3w),
          DsfrGroup(
            label: 'Radios riches en succès sans texte',
            composantState: DsfrComposantState.success(),
            direction: Direction.horizontal,
            children: [
              DsfrRadioRichButton<int>(
                title: 'Un',
                value: 1,
                groupValue: _value,
                onChanged: (final value) {
                  if (value != null) {
                    setState(() {
                      _value = value;
                    });
                  }
                },
              ),
              DsfrRadioRichButton<int>(
                title: 'Deux',
                value: 2,
                groupValue: _value,
                onChanged: (final value) {
                  if (value != null) {
                    setState(() {
                      _value = value;
                    });
                  }
                },
              ),
              DsfrRadioRichButton<int>(
                title: 'Trois',
                value: 3,
                groupValue: _value,
                onChanged: (final value) {
                  if (value != null) {
                    setState(() {
                      _value = value;
                    });
                  }
                },
              ),
            ],
          ),
          const SizedBox(height: DsfrSpacings.s3w),
          DsfrGroup(
            label: 'Radios riches desactivé',
            direction: Direction.horizontal,
            children: [
              DsfrRadioRichButton<int>(
                title: 'Un',
                value: 1,
                groupValue: _value,
                onChanged: (final value) {
                  if (value != null) {
                    setState(() {
                      _value = value;
                    });
                  }
                },
                enabled: false,
              ),
              DsfrRadioRichButton<int>(
                title: 'Deux',
                value: 2,
                groupValue: _value,
                onChanged: (final value) {
                  if (value != null) {
                    setState(() {
                      _value = value;
                    });
                  }
                },
                enabled: false,
              ),
              DsfrRadioRichButton<int>(
                title: 'Trois',
                value: 3,
                groupValue: _value,
                onChanged: (final value) {
                  if (value != null) {
                    setState(() {
                      _value = value;
                    });
                  }
                },
                enabled: false,
              ),
            ],
          ),
        ],
      );
}
