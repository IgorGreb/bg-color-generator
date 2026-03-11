import 'package:bg_color_generator/components/home_page/home_page.dart';
import 'package:flutter/material.dart';

/// The root application widget.
class App extends StatelessWidget {
  /// Creates the root application widget.
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
