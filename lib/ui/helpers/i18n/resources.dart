import 'package:flutter/widgets.dart';

import 'strings/fr.dart';
import 'strings/strings.dart';

class R {
  static Translation string = Fr();

  static void load(Locale locale) {
    switch (locale.toString()) {
      case 'fr_FR':
        string = Fr();
        break;
      default:
        string = PtBr();
        break;
    }
  }
}
