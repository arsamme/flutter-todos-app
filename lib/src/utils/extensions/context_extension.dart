import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension ContextExtension on BuildContext {
  AppLocalizations get localization {
    return AppLocalizations.of(this)!;
  }

  ThemeData get theme {
    return Theme.of(this);
  }

  TextTheme get textTheme {
    return theme.textTheme;
  }

  MediaQueryData get mediaQuery {
    return MediaQuery.of(this);
  }
}
