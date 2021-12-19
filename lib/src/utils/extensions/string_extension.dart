import 'dart:ui';

extension StringExtensions on String {
  Color toColor({Color defaultColor = const Color(0xff000000)}) {
    final colorCode = int.tryParse(this);
    return colorCode != null ? Color(colorCode) : defaultColor;
  }
}
