import 'package:flutter/material.dart';

// This creates a light ColorScheme configuration
// based on the color provided to be seeded
var lightThemeScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 0, 119, 182),
);

// This creates a dark ColorScheme configuration
// based on the color provided to be seeded
var darkThemeScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 0, 119, 182),
);

// This creates a dark theme configuration while
// maintaining some Flutter theming defaults
var darkTheme = ThemeData.dark().copyWith(
  useMaterial3: true,
  colorScheme: darkThemeScheme,
  cardTheme: const CardTheme().copyWith(
    color: darkThemeScheme.secondaryContainer,
    margin: const EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 8,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: darkThemeScheme.primaryContainer,
      foregroundColor: darkThemeScheme.onPrimaryContainer,
    ),
  ),
);

// This creates a light theme configuration while
// maintaining some Flutter theming defaults
var lightTheme = ThemeData().copyWith(
  useMaterial3: true,
  colorScheme: lightThemeScheme,
  appBarTheme: const AppBarTheme().copyWith(
    backgroundColor: lightThemeScheme.onPrimaryContainer,
    foregroundColor: lightThemeScheme.primaryContainer,
  ),
  cardTheme: const CardTheme().copyWith(
    color: lightThemeScheme.secondaryContainer,
    margin: const EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 8,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: lightThemeScheme.primaryContainer,
    ),
  ),
  textTheme: ThemeData().textTheme.copyWith(
        titleLarge: TextStyle(
          fontWeight: FontWeight.bold,
          color: lightThemeScheme.onSecondaryContainer,
          fontSize: 16,
        ),
      ),
);
