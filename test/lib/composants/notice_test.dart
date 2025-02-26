import 'package:flutter/cupertino.dart';
import 'package:flutter_dsfr/composants/accordions.dart';
import 'package:flutter_dsfr/composants/buttons/button.dart';
import 'package:flutter_dsfr/composants/link.dart';
import 'package:flutter_dsfr/composants/modal.dart';
import 'package:flutter_dsfr/composants/notice.dart';
import 'package:flutter_dsfr/fondamentaux/icons.g.dart';
import 'package:flutter_dsfr/helpers/dsfr_component_size.dart';
import '../../helpers/a11y_test.dart';

void main() {
  Widget bandeauxGenericInfo = DsfrNotice(
    titre: 'titre',
    description: 'description',
    onClose: () {},
  );
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

  accessibilityTest(componentName: 'Notice Info generic', isLightMode: true, child: bandeauxGenericInfo);
  accessibilityTest(componentName: 'Notice Info generic', isLightMode: false, child: bandeauxGenericInfo);

  accessibilityTest(componentName: 'Notice Warning generic', isLightMode: true, child: bandeauxGenericWarning);
  accessibilityTest(componentName: 'Notice Warning generic', isLightMode: false, child: bandeauxGenericWarning);

  accessibilityTest(componentName: 'Notice Alert generic', isLightMode: true, child: bandeauxGenericAlert);
  accessibilityTest(componentName: 'Notice Alert generic', isLightMode: false, child: bandeauxGenericAlert);

  accessibilityTest(componentName: 'Notice Weather Orange', isLightMode: true, child: bandeauxWeatherOrange);
  accessibilityTest(componentName: 'Notice Weather Orange', isLightMode: false, child: bandeauxWeatherOrange);

  accessibilityTest(componentName: 'Notice Weather Red', isLightMode: true, child: bandeauxWeatherRed);
  accessibilityTest(componentName: 'Notice Weather Red', isLightMode: false, child: bandeauxWeatherRed);

  accessibilityTest(componentName: 'Notice Weather Purple', isLightMode: true, child: bandeauxWeatherPurple);
  accessibilityTest(componentName: 'Notice Weather Purple', isLightMode: false, child: bandeauxWeatherPurple);

  accessibilityTest(componentName: 'Notice Alert Attack', isLightMode: true, child: bandeauxAlertAttack);
  accessibilityTest(componentName: 'Notice Alert Attack', isLightMode: false, child: bandeauxAlertAttack);

  accessibilityTest(componentName: 'Notice Alert Call For Witnesses', isLightMode: true, child: bandeauxAlertCallForWitnesses);
  accessibilityTest(componentName: 'Notice Alert Call For Witnesses', isLightMode: false, child: bandeauxAlertCallForWitnesses);

  accessibilityTest(componentName: 'Notice Alert Technology', isLightMode: true, child: bandeauxAlertTechnology);
  accessibilityTest(componentName: 'Notice Alert Technology', isLightMode: false, child: bandeauxAlertTechnology);
}
