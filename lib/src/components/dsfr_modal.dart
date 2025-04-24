import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/components/buttons/dsfr_button.dart';
import 'package:flutter_dsfr/src/fondamentaux/dsfr_color_decisions.g.dart';
import 'package:flutter_dsfr/src/fondamentaux/dsfr_icons.g.dart';
import 'package:flutter_dsfr/src/fondamentaux/dsfr_spacings.g.dart';
import 'package:flutter_dsfr/src/helpers/dsfr_component_size.dart';

class DsfrModal extends StatelessWidget {
  final Widget child;
  final bool isDismissible;
  final String closeLabel;

  const DsfrModal({
    super.key,
    required this.isDismissible,
    required this.child,
    required this.closeLabel,
  });

  static Future<T?> showModal<T>({
    required final BuildContext context,
    required final WidgetBuilder builder,
    required final String name,
    final bool isDismissible = true,
    String closeLabel = 'Fermer',
  }) async =>
      showModalBottomSheet<T>(
        context: context,
        builder: (final context) => DsfrModal(
          isDismissible: isDismissible,
          closeLabel: closeLabel,
          child: builder(context),
        ),
        backgroundColor: DsfrColorDecisions.backgroundTransparent(context),
        elevation: 0,
        shape: const RoundedRectangleBorder(),
        barrierColor: DsfrColorDecisions.backgroundTransparentActive(context),
        isScrollControlled: true,
        isDismissible: isDismissible,
        routeSettings: RouteSettings(name: name),
      );

  @override
  Widget build(final context) => ColoredBox(
        color: DsfrColorDecisions.backgroundDefaultGrey(context),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(DsfrSpacings.s2w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                if (isDismissible) ...[
                  Row(
                    children: [
                      const Spacer(),
                      DsfrButton(
                        label: closeLabel,
                        icon: DsfrIcons.systemCloseLine,
                        iconLocation: DsfrButtonIconLocation.right,
                        variant: DsfrButtonVariant.tertiaryWithoutBorder,
                        size: DsfrComponentSize.sm,
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ],
                  ),
                  const SizedBox(height: DsfrSpacings.s1w),
                ],
                child,
              ],
            ),
          ),
        ),
      );
}
