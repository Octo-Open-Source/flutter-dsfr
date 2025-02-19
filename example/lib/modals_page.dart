import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:example/page_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/helpers/dsfr_component_size.dart';

class ModalsPage extends StatelessWidget {
  const ModalsPage({super.key});

  static final model = PageItem(
    title: 'Modales',
    pageBuilder: (final context) => const ModalsPage(),
  );

  @override
  Widget build(final context) => ListView(
        padding: const EdgeInsets.all(16),
        children: [
          DsfrButton(
            label: 'Ouvrir la bottom sheet',
            variant: DsfrButtonVariant.primary,
            size: DsfrComponentSize.lg,
            onPressed: () async {
              await DsfrModal.showModal<void>(
                context: context,
                builder: (final context) => Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'Veuillez confirmer la suppression du compte',
                      style: DsfrTextStyle.headline4(color: DsfrColors.grey50),
                    ),
                    const SizedBox(height: DsfrSpacings.s2w),
                    const Text(
                      'Voulez-vous vraiment supprimer votre compte ainsi que les données associées ?',
                      style: DsfrTextStyle.bodyMd(color: DsfrColors.grey50),
                    ),
                    const Text(
                      'Attention : Aucune donnée ne pourra être récupérée.',
                      style: DsfrTextStyle.bodyMdBold(color: DsfrColors.grey50),
                    ),
                    const SizedBox(height: DsfrSpacings.s4w),
                    DsfrButton(
                      label: 'Confirmer',
                      variant: DsfrButtonVariant.primary,
                      size: DsfrComponentSize.lg,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    const SizedBox(height: DsfrSpacings.s2w),
                    DsfrButton(
                      label: 'Annuler',
                      variant: DsfrButtonVariant.secondary,
                      size: DsfrComponentSize.lg,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
                name: 'name',
              );
            },
          ),
        ],
      );
}
