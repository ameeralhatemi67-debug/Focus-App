import 'package:flutter/material.dart';
import 'package:main_focus_app/core/database/hive_setup.dart';

void main() async {
  // Ensure native bindings are ready before database init
  WidgetsFlutterBinding.ensureInitialized();

  // Boot the Storage Engine
  await HiveSetup.init();

  runApp(const MainFocusApp());
}

class MainFocusApp extends StatelessWidget {
  const MainFocusApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Focus App MVP',
      home: Scaffold(
        body: Center(child: Text("Storage System Online. All Boxes Opened.")),
      ),
    );
  }
}
