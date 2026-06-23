import 'package:hive/hive.dart';

part 'timer_entity.g.dart';

@HiveType(typeId: 2)
class TimerEntity extends HiveObject {
  // Identifiers & Relational Routing
  @HiveField(0)
  final String id;

  @HiveField(1)
  String folderId;

  @HiveField(2)
  String? externalSyncId;

  // Mutable State
  @HiveField(3)
  String name;

  @HiveField(4)
  int setTime; // Stored in seconds

  @HiveField(5)
  int currentTime; // Stored in seconds

  @HiveField(6)
  String type; // 'stopwatch' or 'countdown'

  @HiveField(7)
  String mode; // e.g., 'active', 'paused', 'completed'

  @HiveField(8)
  String? appearance;

  @HiveField(9)
  String? ringtone;

  @HiveField(10)
  String importance; // 'low', 'medium', 'high'

  @HiveField(11)
  bool state; // true if modified since creation

  // Static Meta-Data for Analytics
  @HiveField(12)
  DateTime timeMade;

  @HiveField(13)
  DateTime? timeFinished;

  @HiveField(14)
  int timerLifetime;

  @HiveField(15)
  int timerRepeated;

  TimerEntity({
    required this.id,
    required this.folderId,
    this.externalSyncId,
    required this.name,
    required this.setTime,
    required this.currentTime,
    required this.type,
    required this.mode,
    this.appearance,
    this.ringtone,
    required this.importance,
    this.state = false,
    required this.timeMade,
    this.timeFinished,
    this.timerLifetime = 0,
    this.timerRepeated = 0,
  });
}
