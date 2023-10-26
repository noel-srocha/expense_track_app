import 'package:flutter/material.dart';

import './config/theming.dart';
import './pages/expenses.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: darkTheme,
      theme: lightTheme,
      // themeMode: ThemeMode.system, // default
      home: const ExpensesPage(),
    );
  }
}
