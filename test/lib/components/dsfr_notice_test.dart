import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/components/dsfr_notice.dart';
import '../../helpers/a11y_test.skip.dart';

void main() {
  Widget bandeauxGenericInfo = DsfrNotice(titre: 'titre', description: 'description', onClose: () {});
  Widget bandeauxGenericWarning = DsfrNotice(
    titre: 'Titre du bandeau',
    description: 'Texte de description lorem ipsum dolor sit amet, consectetur.',
    type: DsfrNoticeType.genericWarning,
    onClose: () {},
  );
  Widget bandeauxGenericAlert = DsfrNotice(
    titre: 'Titre du bandeau',
    description: 'Texte de description lorem ipsum dolor sit amet, consectetur.',
    type: DsfrNoticeType.genericAlert,
    onClose: () {},
  );
  Widget bandeauxWeatherOrange = DsfrNotice(
    titre: 'Titre du bandeau',
    description: 'Texte de description lorem ipsum dolor sit amet, consectetur.',
    type: DsfrNoticeType.weatherOrange,
    onClose: () {},
  );
  Widget bandeauxWeatherRed = DsfrNotice(
    titre: 'Titre du bandeau',
    description: 'Texte de description lorem ipsum dolor sit amet, consectetur.',
    type: DsfrNoticeType.weatherRed,
    onClose: () {},
  );
  Widget bandeauxWeatherPurple = DsfrNotice(
    titre: 'Titre du bandeau',
    description: 'Texte de description lorem ipsum dolor sit amet, consectetur.',
    type: DsfrNoticeType.weatherPurple,
    onClose: () {},
  );
  Widget bandeauxAlertAttack = DsfrNotice(
    titre: 'Titre du bandeau',
    description: 'Texte de description lorem ipsum dolor sit amet, consectetur.',
    type: DsfrNoticeType.alertAttack,
    onClose: () {},
  );
  Widget bandeauxAlertCallForWitnesses = DsfrNotice(
    titre: 'Titre du bandeau',
    description: 'Texte de description lorem ipsum dolor sit amet, consectetur.',
    type: DsfrNoticeType.alertCallForWitnesses,
    onClose: () {},
  );
  Widget bandeauxAlertTechnology = DsfrNotice(
    titre: 'Titre du bandeau',
    description: 'Texte de description lorem ipsum dolor sit amet, consectetur.',
    type: DsfrNoticeType.alertTechnology,
    onClose: () {},
  );

  accessibilityTest(componentName: 'Notice Info generic', themeMode: ThemeMode.light, child: bandeauxGenericInfo);
  accessibilityTest(componentName: 'Notice Info generic', themeMode: ThemeMode.dark, child: bandeauxGenericInfo);

  accessibilityTest(componentName: 'Notice Warning generic', themeMode: ThemeMode.light, child: bandeauxGenericWarning);
  accessibilityTest(componentName: 'Notice Warning generic', themeMode: ThemeMode.dark, child: bandeauxGenericWarning);

  accessibilityTest(componentName: 'Notice Alert generic', themeMode: ThemeMode.light, child: bandeauxGenericAlert);
  accessibilityTest(componentName: 'Notice Alert generic', themeMode: ThemeMode.dark, child: bandeauxGenericAlert);

  accessibilityTest(componentName: 'Notice Weather Orange', themeMode: ThemeMode.light, child: bandeauxWeatherOrange);
  accessibilityTest(componentName: 'Notice Weather Orange', themeMode: ThemeMode.dark, child: bandeauxWeatherOrange);

  accessibilityTest(componentName: 'Notice Weather Red', themeMode: ThemeMode.light, child: bandeauxWeatherRed);
  accessibilityTest(componentName: 'Notice Weather Red', themeMode: ThemeMode.dark, child: bandeauxWeatherRed);

  accessibilityTest(componentName: 'Notice Weather Purple', themeMode: ThemeMode.light, child: bandeauxWeatherPurple);
  accessibilityTest(componentName: 'Notice Weather Purple', themeMode: ThemeMode.dark, child: bandeauxWeatherPurple);

  accessibilityTest(componentName: 'Notice Alert Attack', themeMode: ThemeMode.light, child: bandeauxAlertAttack);
  accessibilityTest(componentName: 'Notice Alert Attack', themeMode: ThemeMode.dark, child: bandeauxAlertAttack);

  accessibilityTest(
    componentName: 'Notice Alert Call For Witnesses',
    themeMode: ThemeMode.light,
    child: bandeauxAlertCallForWitnesses,
  );
  accessibilityTest(
    componentName: 'Notice Alert Call For Witnesses',
    themeMode: ThemeMode.dark,
    child: bandeauxAlertCallForWitnesses,
  );

  accessibilityTest(
    componentName: 'Notice Alert Technology',
    themeMode: ThemeMode.light,
    child: bandeauxAlertTechnology,
  );
  accessibilityTest(
    componentName: 'Notice Alert Technology',
    themeMode: ThemeMode.dark,
    child: bandeauxAlertTechnology,
  );
}
