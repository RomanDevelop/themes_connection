import 'package:flutter/material.dart';
import 'package:flutter_application_1/my_home_page.dart';
import 'theme_inherited_widget.dart';
import 'themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkTheme = false;

  void _toggleTheme() {
    setState(() {
      _isDarkTheme = !_isDarkTheme;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ThemeInheritedWidget(
      theme: _isDarkTheme ? darkTheme : lightTheme,
      toggleTheme: _toggleTheme,
      child: Builder(
        builder: (context) {
          return MaterialApp(
            title: 'Flutter Theme Demo',
            theme: ThemeInheritedWidget.of(context)?.theme,
            home: MyHomePage(),
          );
        },
      ),
    );
  }
}
