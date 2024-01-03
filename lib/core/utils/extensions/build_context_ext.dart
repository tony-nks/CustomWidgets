import 'package:flutter/material.dart';
import '../../../ui/themes/theme.dart';

extension BuildContextExt on BuildContext {
  ThemeColors get themeColors => Theme.of(this).extension<ThemeColors>()!;

  ThemeViewModel get themeViewModel => ThemeViewModel.of(this)!;
}
