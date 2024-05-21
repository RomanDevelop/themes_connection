import 'package:flutter/material.dart';
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
    return MaterialApp(
      title: 'Flutter Theme Demo',
      theme: _isDarkTheme ? darkTheme : lightTheme,
      home: MyHomePage(
        isDarkTheme: _isDarkTheme,
        toggleTheme: _toggleTheme,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final bool isDarkTheme;
  final Function toggleTheme;

  MyHomePage({required this.isDarkTheme, required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Theme Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'This is the ${isDarkTheme ? "dark" : "light"} theme',
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => toggleTheme(),
              child: Text('Toggle Theme'),
            ),
          ],
        ),
      ),
    );
  }
}
