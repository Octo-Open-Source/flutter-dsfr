import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:example/page_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/helpers/composant_state.dart';

import 'mise_en_page/page_section.dart';
import 'mise_en_page/page_sub_section.dart';

class TogglesPage extends StatefulWidget {
  const TogglesPage({super.key});

  static final model = PageItem(
    title: 'Interrupteur',
    pageBuilder: (final context) => const TogglesPage(),
  );

  @override
  State<TogglesPage> createState() => _TogglesPageState();
}

class _TogglesPageState extends State<TogglesPage> {
  bool _toggleLeft = false;
  bool _toggleRight = false;

  @override
  Widget build(final context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 88),
        child: Column(
          spacing: 38,
          children: [
            PageSection(
              title: 'Etats',
              children: [
                PageSubSection(
                  title: 'Label à gauche',
                  children: [
                    DsfrSwitch(
                      label: 'Libellé de l\'interrupteur',
                      labelLocation: DsfrSwitchLabelLocation.left,
                      value: _toggleLeft,
                      onChanged: (final value) {
                        setState(() {
                          _toggleLeft = value;
                        });
                      },
                    ),
                    DsfrSwitch(
                      label: 'Libellé de l\'interrupteur',
                      labelLocation: DsfrSwitchLabelLocation.left,
                      value: !_toggleRight,
                      onChanged: (final value) {
                        setState(() {
                          _toggleRight = !value;
                        });
                      },
                    ),
                    DsfrSwitch(
                      label: 'Libellé de l\'interrupteur',
                      labelLocation: DsfrSwitchLabelLocation.left,
                      enabled: false,
                      value: false,
                    ),
                    DsfrSwitch(
                      label: 'Libellé de l\'interrupteur',
                      labelLocation: DsfrSwitchLabelLocation.left,
                      enabled: false,
                      value: true,
                    ),
                  ],
                ),
                PageSubSection(
                  title: 'Label à droite',
                  children: [
                    DsfrSwitch(
                      label: 'Libellé de l\'interrupteur',
                      value: _toggleLeft,
                      onChanged: (final value) {
                        setState(() {
                          _toggleLeft = value;
                        });
                      },
                    ),
                    DsfrSwitch(
                      label: 'Libellé de l\'interrupteur',
                      value: !_toggleRight,
                      onChanged: (final value) {
                        setState(() {
                          _toggleRight = !value;
                        });
                      },
                    ),
                    DsfrSwitch(
                      label: 'Libellé de l\'interrupteur',
                      enabled: false,
                      value: false,
                    ),
                    DsfrSwitch(
                      label: 'Libellé de l\'interrupteur',
                      enabled: false,
                      value: true,
                    ),
                  ],
                ),
              ],
            ),
            PageSection(
              title: 'Avec description',
              children: [
                PageSubSection(title: 'Label à gauche', children: [
                  DsfrSwitch(
                    label: 'Libellé de l\'interrupteur',
                    description: 'Texte de description additionnel',
                    labelLocation: DsfrSwitchLabelLocation.left,
                    value: _toggleLeft,
                    onChanged: (final value) {
                      setState(() {
                        _toggleLeft = value;
                      });
                    },
                  ),
                  DsfrSwitch(
                    label: 'Libellé de l\'interrupteur',
                    description: 'Texte de description additionnel',
                    labelLocation: DsfrSwitchLabelLocation.left,
                    value: !_toggleRight,
                    onChanged: (final value) {
                      setState(() {
                        _toggleRight = !value;
                      });
                    },
                  ),
                  DsfrSwitch(
                    label: 'Libellé de l\'interrupteur',
                    description: 'Texte de description additionnel',
                    labelLocation: DsfrSwitchLabelLocation.left,
                    enabled: false,
                    value: false,
                  ),
                  DsfrSwitch(
                    label: 'Libellé de l\'interrupteur',
                    description: 'Texte de description additionnel',
                    labelLocation: DsfrSwitchLabelLocation.left,
                    enabled: false,
                    value: true,
                  ),
                ]),
                PageSubSection(
                  title: 'Label à droite',
                  children: [
                    DsfrSwitch(
                      label: 'Libellé de l\'interrupteur',
                      description: 'Texte de description additionnel',
                      value: _toggleLeft,
                      onChanged: (final value) {
                        setState(() {
                          _toggleLeft = value;
                        });
                      },
                    ),
                    DsfrSwitch(
                      label: 'Libellé de l\'interrupteur',
                      description: 'Texte de description additionnel',
                      value: !_toggleRight,
                      onChanged: (final value) {
                        setState(() {
                          _toggleRight = !value;
                        });
                      },
                    ),
                    DsfrSwitch(
                      label: 'Libellé de l\'interrupteur',
                      description: 'Texte de description additionnel',
                      enabled: false,
                      value: false,
                    ),
                    DsfrSwitch(
                      label: 'Libellé de l\'interrupteur',
                      description: 'Texte de description additionnel',
                      enabled: false,
                      value: true,
                    ),
                  ],
                )
              ],
            ),
            PageSection(
              title: 'Avec statut',
              children: [
                PageSubSection(title: 'Label à gauche', children: [
                  DsfrSwitch(
                    label: 'Libellé de l\'interrupteur',
                    status: _toggleLeft ? 'Activé' : 'Désactivé',
                    labelLocation: DsfrSwitchLabelLocation.left,
                    value: _toggleLeft,
                    onChanged: (final value) {
                      setState(() {
                        _toggleLeft = value;
                      });
                    },
                  ),
                  DsfrSwitch(
                    label: 'Libellé de l\'interrupteur',
                    status: !_toggleRight ? 'Activé' : 'Désactivé',
                    labelLocation: DsfrSwitchLabelLocation.left,
                    value: !_toggleRight,
                    onChanged: (final value) {
                      setState(() {
                        _toggleRight = !value;
                      });
                    },
                  ),
                  DsfrSwitch(
                    label: 'Libellé de l\'interrupteur',
                    status: 'Désactivé',
                    labelLocation: DsfrSwitchLabelLocation.left,
                    enabled: false,
                    value: false,
                  ),
                  DsfrSwitch(
                    label: 'Libellé de l\'interrupteur',
                    status: 'Désactivé',
                    labelLocation: DsfrSwitchLabelLocation.left,
                    enabled: false,
                    value: true,
                  ),
                  DsfrSwitch(
                    label: 'Libellé de l\'interrupteur',
                    description: 'Texte de description additionnel',
                    status: _toggleLeft ? 'Activé' : 'Désactivé',
                    labelLocation: DsfrSwitchLabelLocation.left,
                    value: _toggleLeft,
                    onChanged: (final value) {
                      setState(() {
                        _toggleLeft = value;
                      });
                    },
                  ),
                ]),
                PageSubSection(
                  title: 'Label à droite',
                  children: [
                    DsfrSwitch(
                      label: 'Libellé de l\'interrupteur',
                      status: _toggleLeft ? 'Activé' : 'Désactivé',
                      value: _toggleLeft,
                      onChanged: (final value) {
                        setState(() {
                          _toggleLeft = value;
                        });
                      },
                    ),
                    DsfrSwitch(
                      label: 'Libellé de l\'interrupteur',
                      status: !_toggleRight ? 'Activé' : 'Désactivé',
                      value: !_toggleRight,
                      onChanged: (final value) {
                        setState(() {
                          _toggleRight = !value;
                        });
                      },
                    ),
                    DsfrSwitch(
                      label: 'Libellé de l\'interrupteur',
                      status: 'Désactivé',
                      enabled: false,
                      value: false,
                    ),
                    DsfrSwitch(
                      label: 'Libellé de l\'interrupteur',
                      status: 'Désactivé',
                      enabled: false,
                      value: true,
                    ),
                    DsfrSwitch(
                      label: 'Libellé de l\'interrupteur',
                      description: 'Texte de description additionnel',
                      status: _toggleLeft ? 'Activé' : 'Désactivé',
                      value: _toggleLeft,
                      onChanged: (final value) {
                        setState(() {
                          _toggleLeft = value;
                        });
                      },
                    ),
                  ],
                )
              ],
            ),
            PageSection(
              title: 'Avec state',
              children: [
                PageSubSection(title: 'Label à gauche', children: [
                  DsfrSwitch(
                    label: 'Libellé de l\'interrupteur',
                    description: 'Texte de description additionnel',
                    status: _toggleLeft ? 'Activé' : 'Désactivé',
                    labelLocation: DsfrSwitchLabelLocation.left,
                    composantState: DsfrComposantState.error(
                        errorMessage: "Texte d'erreur obligatoire"),
                    value: _toggleLeft,
                    onChanged: (final value) {
                      setState(() {
                        _toggleLeft = value;
                      });
                    },
                  ),
                  DsfrSwitch(
                    label: 'Libellé de l\'interrupteur',
                    description: 'Texte de description additionnel',
                    status: !_toggleLeft ? 'Activé' : 'Désactivé',
                    labelLocation: DsfrSwitchLabelLocation.left,
                    composantState: DsfrComposantState.error(
                        errorMessage: "Texte d'erreur obligatoire"),
                    value: !_toggleLeft,
                    onChanged: (final value) {
                      setState(() {
                        _toggleLeft = !value;
                      });
                    },
                  ),
                  DsfrSwitch(
                    label: 'Libellé de l\'interrupteur',
                    description: 'Texte de description additionnel',
                    status: _toggleLeft ? 'Activé' : 'Désactivé',
                    labelLocation: DsfrSwitchLabelLocation.left,
                    composantState: DsfrComposantState.success(
                        message: "Texte de validation optionnel"),
                    value: _toggleLeft,
                    onChanged: (final value) {
                      setState(() {
                        _toggleLeft = value;
                      });
                    },
                  ),
                  DsfrSwitch(
                    label: 'Libellé de l\'interrupteur',
                    description: 'Texte de description additionnel',
                    status: !_toggleLeft ? 'Activé' : 'Désactivé',
                    labelLocation: DsfrSwitchLabelLocation.left,
                    composantState: DsfrComposantState.success(
                        message: "Texte de validation optionnel"),
                    value: !_toggleLeft,
                    onChanged: (final value) {
                      setState(() {
                        _toggleLeft = !value;
                      });
                    },
                  ),
                ]),
                PageSubSection(
                  title: 'Label à droite',
                  children: [
                    DsfrSwitch(
                      label: 'Libellé de l\'interrupteur',
                      description: 'Texte de description additionnel',
                      status: _toggleLeft ? 'Activé' : 'Désactivé',
                      labelLocation: DsfrSwitchLabelLocation.right,
                      composantState: DsfrComposantState.error(
                          errorMessage: "Texte d'erreur obligatoire"),
                      value: _toggleLeft,
                      onChanged: (final value) {
                        setState(() {
                          _toggleLeft = value;
                        });
                      },
                    ),
                    DsfrSwitch(
                      label: 'Libellé de l\'interrupteur',
                      description: 'Texte de description additionnel',
                      status: !_toggleLeft ? 'Activé' : 'Désactivé',
                      labelLocation: DsfrSwitchLabelLocation.right,
                      composantState: DsfrComposantState.error(
                          errorMessage: "Texte d'erreur obligatoire"),
                      value: !_toggleLeft,
                      onChanged: (final value) {
                        setState(() {
                          _toggleLeft = !value;
                        });
                      },
                    ),
                    DsfrSwitch(
                      label: 'Libellé de l\'interrupteur',
                      description: 'Texte de description additionnel',
                      status: _toggleLeft ? 'Activé' : 'Désactivé',
                      labelLocation: DsfrSwitchLabelLocation.right,
                      composantState: DsfrComposantState.success(
                          message: "Texte de validation optionnel"),
                      value: _toggleLeft,
                      onChanged: (final value) {
                        setState(() {
                          _toggleLeft = value;
                        });
                      },
                    ),
                    DsfrSwitch(
                      label: 'Libellé de l\'interrupteur',
                      description: 'Texte de description additionnel',
                      status: !_toggleLeft ? 'Activé' : 'Désactivé',
                      labelLocation: DsfrSwitchLabelLocation.right,
                      composantState: DsfrComposantState.success(
                          message: "Texte de validation optionnel"),
                      value: !_toggleLeft,
                      onChanged: (final value) {
                        setState(() {
                          _toggleLeft = !value;
                        });
                      },
                    ),
                  ],
                )
              ],
            ),
            PageSection(
              title: 'Groupe',
              children: [
                PageSubSection(
                  title: 'Label à gauche',
                  children: [
                    PageSubSection(
                      title: 'standard',
                      children: [
                        SwitchGroup(
                          label: 'Légende',
                          description:
                              'Texte de description additionnel (optionnel)',
                          children: [
                            DsfrSwitch(
                              label: 'Interrupteur 1',
                              labelLocation: DsfrSwitchLabelLocation.left,
                              value: _toggleLeft,
                              onChanged: (final value) {
                                setState(() {
                                  _toggleLeft = value;
                                });
                              },
                            ),
                            DsfrSwitch(
                              label: 'Interrupteur 2',
                              labelLocation: DsfrSwitchLabelLocation.left,
                              value: !_toggleLeft,
                              onChanged: (final value) {
                                setState(() {
                                  _toggleLeft = !value;
                                });
                              },
                            ),
                            DsfrSwitch(
                              label: 'Interrupteur 3',
                              labelLocation: DsfrSwitchLabelLocation.left,
                              value: _toggleLeft,
                              onChanged: (final value) {
                                setState(() {
                                  _toggleLeft = value;
                                });
                              },
                            ),
                            DsfrSwitch(
                              label: 'Interrupteur 4',
                              labelLocation: DsfrSwitchLabelLocation.left,
                              value: !_toggleLeft,
                              onChanged: (final value) {
                                setState(() {
                                  _toggleLeft = !value;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                    PageSubSection(
                      title: 'succès',
                      children: [
                        SwitchGroup(
                          label: 'Légende',
                          description:
                              'Texte de description additionnel (optionnel)',
                          composantState: DsfrComposantState.success(
                              message: "Texte de validation optionnel"),
                          children: [
                            DsfrSwitch(
                              label: 'Interrupteur 1',
                              labelLocation: DsfrSwitchLabelLocation.left,
                              value: _toggleLeft,
                              onChanged: (final value) {
                                setState(() {
                                  _toggleLeft = value;
                                });
                              },
                            ),
                            DsfrSwitch(
                              label: 'Interrupteur 2',
                              labelLocation: DsfrSwitchLabelLocation.left,
                              value: !_toggleLeft,
                              onChanged: (final value) {
                                setState(() {
                                  _toggleLeft = !value;
                                });
                              },
                            ),
                            DsfrSwitch(
                              label: 'Interrupteur 3',
                              labelLocation: DsfrSwitchLabelLocation.left,
                              value: _toggleLeft,
                              onChanged: (final value) {
                                setState(() {
                                  _toggleLeft = value;
                                });
                              },
                            ),
                            DsfrSwitch(
                              label: 'Interrupteur 4',
                              labelLocation: DsfrSwitchLabelLocation.left,
                              value: !_toggleLeft,
                              onChanged: (final value) {
                                setState(() {
                                  _toggleLeft = !value;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                    PageSubSection(
                      title: 'erreur',
                      children: [
                        SwitchGroup(
                          label: 'Légende',
                          description:
                              'Texte de description additionnel (optionnel)',
                          composantState: DsfrComposantState.error(
                              errorMessage: "Texte d'erreur obligatoire"),
                          children: [
                            DsfrSwitch(
                              label: 'Interrupteur 1',
                              labelLocation: DsfrSwitchLabelLocation.left,
                              value: _toggleLeft,
                              onChanged: (final value) {
                                setState(() {
                                  _toggleLeft = value;
                                });
                              },
                            ),
                            DsfrSwitch(
                              label: 'Interrupteur 2',
                              labelLocation: DsfrSwitchLabelLocation.left,
                              value: !_toggleLeft,
                              onChanged: (final value) {
                                setState(() {
                                  _toggleLeft = !value;
                                });
                              },
                            ),
                            DsfrSwitch(
                              label: 'Interrupteur 3',
                              labelLocation: DsfrSwitchLabelLocation.left,
                              value: _toggleLeft,
                              onChanged: (final value) {
                                setState(() {
                                  _toggleLeft = value;
                                });
                              },
                            ),
                            DsfrSwitch(
                              label: 'Interrupteur 4',
                              labelLocation: DsfrSwitchLabelLocation.left,
                              value: !_toggleLeft,
                              onChanged: (final value) {
                                setState(() {
                                  _toggleLeft = !value;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                PageSubSection(
                  title: 'Label à droite',
                  children: [
                    PageSubSection(
                      title: 'standard',
                      children: [
                        SwitchGroup(
                          label: 'Légende',
                          description:
                              'Texte de description additionnel (optionnel)',
                          children: [
                            DsfrSwitch(
                              label: 'Interrupteur 1',
                              labelLocation: DsfrSwitchLabelLocation.right,
                              value: _toggleRight,
                              onChanged: (final value) {
                                setState(() {
                                  _toggleRight = value;
                                });
                              },
                            ),
                            DsfrSwitch(
                              label: 'Interrupteur 2',
                              labelLocation: DsfrSwitchLabelLocation.right,
                              value: !_toggleRight,
                              onChanged: (final value) {
                                setState(() {
                                  _toggleRight = !value;
                                });
                              },
                            ),
                            DsfrSwitch(
                              label: 'Interrupteur 3',
                              labelLocation: DsfrSwitchLabelLocation.right,
                              value: _toggleRight,
                              onChanged: (final value) {
                                setState(() {
                                  _toggleRight = value;
                                });
                              },
                            ),
                            DsfrSwitch(
                              label: 'Interrupteur 4',
                              labelLocation: DsfrSwitchLabelLocation.right,
                              value: !_toggleRight,
                              onChanged: (final value) {
                                setState(() {
                                  _toggleRight = !value;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                    PageSubSection(
                      title: 'succès',
                      children: [
                        SwitchGroup(
                          label: 'Légende',
                          description:
                              'Texte de description additionnel (optionnel)',
                          composantState: DsfrComposantState.success(
                              message: "Texte de validation optionnel"),
                          children: [
                            DsfrSwitch(
                              label: 'Interrupteur 1',
                              labelLocation: DsfrSwitchLabelLocation.right,
                              value: _toggleRight,
                              onChanged: (final value) {
                                setState(() {
                                  _toggleRight = value;
                                });
                              },
                            ),
                            DsfrSwitch(
                              label: 'Interrupteur 2',
                              labelLocation: DsfrSwitchLabelLocation.right,
                              value: !_toggleRight,
                              onChanged: (final value) {
                                setState(() {
                                  _toggleRight = !value;
                                });
                              },
                            ),
                            DsfrSwitch(
                              label: 'Interrupteur 3',
                              labelLocation: DsfrSwitchLabelLocation.right,
                              value: _toggleRight,
                              onChanged: (final value) {
                                setState(() {
                                  _toggleRight = value;
                                });
                              },
                            ),
                            DsfrSwitch(
                              label: 'Interrupteur 4',
                              labelLocation: DsfrSwitchLabelLocation.right,
                              value: !_toggleRight,
                              onChanged: (final value) {
                                setState(() {
                                  _toggleRight = !value;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                    PageSubSection(
                      title: 'erreur',
                      children: [
                        SwitchGroup(
                          label: 'Légende',
                          description:
                              'Texte de description additionnel (optionnel)',
                          composantState: DsfrComposantState.error(
                              errorMessage: "Texte d'erreur obligatoire"),
                          children: [
                            DsfrSwitch(
                              label: 'Interrupteur 1',
                              labelLocation: DsfrSwitchLabelLocation.right,
                              value: _toggleRight,
                              onChanged: (final value) {
                                setState(() {
                                  _toggleRight = value;
                                });
                              },
                            ),
                            DsfrSwitch(
                              label: 'Interrupteur 2',
                              labelLocation: DsfrSwitchLabelLocation.right,
                              value: !_toggleRight,
                              onChanged: (final value) {
                                setState(() {
                                  _toggleRight = !value;
                                });
                              },
                            ),
                            DsfrSwitch(
                              label: 'Interrupteur 3',
                              labelLocation: DsfrSwitchLabelLocation.right,
                              value: _toggleRight,
                              onChanged: (final value) {
                                setState(() {
                                  _toggleRight = value;
                                });
                              },
                            ),
                            DsfrSwitch(
                              label: 'Interrupteur 4',
                              labelLocation: DsfrSwitchLabelLocation.right,
                              value: !_toggleRight,
                              onChanged: (final value) {
                                setState(() {
                                  _toggleRight = !value;
                                });
                              },
                            ),
                          ],
                        )
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
}
