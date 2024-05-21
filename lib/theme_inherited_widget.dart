import 'package:flutter/material.dart';

class ThemeInheritedWidget extends InheritedWidget {
  final ThemeData theme;
  final Function toggleTheme;

  ThemeInheritedWidget({
    required this.theme,
    required this.toggleTheme,
    required Widget child,
  }) : super(child: child);

  @override
  bool updateShouldNotify(ThemeInheritedWidget oldWidget) {
    return oldWidget.theme != theme;
  }

  static ThemeInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ThemeInheritedWidget>();
  }
}
