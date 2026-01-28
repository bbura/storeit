import 'package:flutter/material.dart';
import 'package:localizations/localizations.dart';

extension LocalizedBuildContext on BuildContext {
  AppLocalizations get loc => AppLocalizations.of(this);
}
