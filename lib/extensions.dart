import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';

extension BuildContextX on BuildContext {
  /// Shortcut for theme.
  ThemeData get theme => Theme.of(this);

  /// Shortcut for app's color pallette.
  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  /// Shortcut for textTheme.
  TextTheme get textTheme => theme.textTheme;

  /// Shortcut for getting hardware notches.
  EdgeInsets get notches => MediaQuery.of(this).padding;

  /// Shortcut for getting screen size.
  Size get screenSize => MediaQuery.of(this).size;
}

extension ColorX on Color {
  PdfColor get toPdfColor => PdfColor.fromInt(toARGB32());
}

extension PdfColorX on PdfColor {
  PdfColor get burn {
    final blend = 0.8;
    var r = red;
    var g = green;
    var b = blue;

    r = (red * (1 - blend));
    g = (green * (1 - blend));
    b = (blue * (1 - blend));
    return PdfColor(r, g, b);
  }
}
