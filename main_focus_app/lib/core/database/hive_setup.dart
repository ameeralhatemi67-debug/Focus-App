import 'package:hive_flutter/hive_flutter.dart';
import 'package:main_focus_app/data/models/folder_entity.dart';
import 'package:main_focus_app/data/models/timer_entity.dart';
import 'package:main_focus_app/core/database/box_constants.dart';

class HiveSetup {
  static Future<void> init() async {
    // Initialize the path mapping for Flutter
    await Hive.initFlutter();

    // Register Binary Adapters
    Hive.registerAdapter(FolderEntityAdapter());
    Hive.registerAdapter(TimerEntityAdapter());

    // Open Core Boxes
    await Hive.openBox<TimerEntity>(AppBoxes.timerBox);
    await Hive.openBox<FolderEntity>(AppBoxes.folderBox);
    await Hive.openBox(AppBoxes.analyticsBox);
    await Hive.openBox(AppBoxes.settingsBox);
  }
}
