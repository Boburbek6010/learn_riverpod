import 'package:flutter/material.dart';
import 'package:learn_riverpod/pages/detail_page.dart';
import 'package:learn_riverpod/pages/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/detail_page",
      routes: {
        "/":(context) => const HomePage(),
        "/detail_page":(context) => const DetailPage(),
      },
    );
  }
}
