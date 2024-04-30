import 'package:flutter/material.dart';
import 'package:pill_reminder/common/widgets/navigation_menu.dart';
import 'package:pill_reminder/utils/theme/theme.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system, // Detect Theme of the device
      theme: myAppTheme.lightTheme,
      darkTheme: myAppTheme.darkTheme,
      home: NavigationMenu(),
    );
  }
}