import 'package:flutter/material.dart';

class AppTheme {
  // Color palette
  static const violetColor = Color(0xFF7C3AED);  // violet-600
  static const backgroundColor = Colors.white;
  static const darkBackgroundColor = Color(0xFF1F2937); // gray-800
  static const cardPink = Color(0xFFFBB6CE);    // pink-300
  static const cardOrange = Color(0xFFFBD38D);   // orange-300
  static const cardYellow = Color(0xFFFAF089);   // yellow-300
  static const unselectedColor = Color(0xFFD1D5DB); // gray-300
  static const errorColor = Color(0xFFDC3545);    // Error red

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: backgroundColor,
    colorScheme: const ColorScheme.light(
      primary: violetColor,
      background: backgroundColor,
      surface: backgroundColor,
      error: errorColor,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: backgroundColor,
      foregroundColor: violetColor,
      elevation: 0,
      centerTitle: true,
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: violetColor,
      height: 65,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      indicatorColor: Colors.white.withOpacity(0.2),
      iconTheme: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return const IconThemeData(color: Colors.white);
        }
        return const IconThemeData(color: unselectedColor);
      }),
      labelTextStyle: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return const TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          );
        }
        return const TextStyle(
          color: unselectedColor,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        );
      }),
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
      headlineMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: Colors.black87,
      ),
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        color: Colors.black87,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        color: Colors.black54,
      ),
    ),
    cardTheme: CardThemeData(
      color: Colors.white,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: darkBackgroundColor,
    colorScheme: ColorScheme.dark(
      primary: violetColor,
      background: darkBackgroundColor,
      surface: darkBackgroundColor,
      error: errorColor,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: darkBackgroundColor,
      foregroundColor: Colors.white,
      elevation: 0,
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: violetColor,
      height: 65,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      indicatorColor: Colors.white.withOpacity(0.2),
      iconTheme: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return const IconThemeData(color: Colors.white);
        }
        return const IconThemeData(color: unselectedColor);
      }),
      labelTextStyle: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return const TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          );
        }
        return const TextStyle(
          color: unselectedColor,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        );
      }),
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      headlineMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        color: Colors.white70,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        color: Colors.white54,
      ),
    ),
    cardTheme: CardThemeData(
      color: Color(0xFF374151), // gray-700
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),
  );
} 