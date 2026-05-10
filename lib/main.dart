import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'feature/home/OriginalPage.dart';

void main() {
  // Ensure Flutter bindings are initialized
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const FocusApp());
}

class FocusApp extends StatelessWidget {
  const FocusApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Focus App',

      // Using the themes we defined in app_theme.dart
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,

      // ThemeMode.system follows the phone's Dark/Light mode setting.
      // You can change this to a state-managed variable later for your toggle.
      themeMode: ThemeMode.system,

      home: const OriginalPage(),
    );
  }
}
