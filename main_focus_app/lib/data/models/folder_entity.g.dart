// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'folder_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FolderEntityAdapter extends TypeAdapter<FolderEntity> {
  @override
  final int typeId = 1;

  @override
  FolderEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FolderEntity(
      folderId: fields[0] as String,
      folderName: fields[1] as String,
      isDefault: fields[2] as bool,
      colorTheme: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, FolderEntity obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.folderId)
      ..writeByte(1)
      ..write(obj.folderName)
      ..writeByte(2)
      ..write(obj.isDefault)
      ..writeByte(3)
      ..write(obj.colorTheme);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FolderEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
