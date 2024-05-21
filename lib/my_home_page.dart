import 'package:flutter/material.dart';
import 'theme_inherited_widget.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeInheritedWidget = ThemeInheritedWidget.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Theme Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'This is the ${themeInheritedWidget?.theme.brightness == Brightness.dark ? "dark" : "light"} theme',
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => themeInheritedWidget?.toggleTheme(),
              child: Text('Toggle Theme'),
            ),
          ],
        ),
      ),
    );
  }
}
