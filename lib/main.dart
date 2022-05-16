import 'package:flutter/material.dart';

import 'presentation/pages/landing_page.dart';

void main() {
  runApp(const OIApp());
}

class OIApp extends StatelessWidget {
  const OIApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Open Infra Summit',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
