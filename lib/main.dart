import 'package:flutter/material.dart';

import 'src/core/service_locator/service_locator.dart';

Future<void> main() async {
  await setUpLocator();

  runApp(
    const App(),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meter reader',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const Dashboard(),
    );
  }
}
