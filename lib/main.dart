import 'package:flutter/material.dart';

import 'routes/rowts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //! I used this route to navigate between screens because it’s better
      initialRoute: '/LoginPage',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
