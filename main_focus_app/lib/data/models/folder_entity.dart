import 'package:hive/hive.dart';

part 'folder_entity.g.dart'; // Required for generator

@HiveType(typeId: 1)
class FolderEntity extends HiveObject {
  @HiveField(0)
  final String folderId;

  @HiveField(1)
  String folderName;

  @HiveField(2)
  final bool isDefault;

  @HiveField(3)
  String? colorTheme;

  FolderEntity({
    required this.folderId,
    required this.folderName,
    this.isDefault = false,
    this.colorTheme,
  });
}
