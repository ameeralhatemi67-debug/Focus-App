// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timer_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TimerEntityAdapter extends TypeAdapter<TimerEntity> {
  @override
  final int typeId = 2;

  @override
  TimerEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TimerEntity(
      id: fields[0] as String,
      folderId: fields[1] as String,
      externalSyncId: fields[2] as String?,
      name: fields[3] as String,
      setTime: fields[4] as int,
      currentTime: fields[5] as int,
      type: fields[6] as String,
      mode: fields[7] as String,
      appearance: fields[8] as String?,
      ringtone: fields[9] as String?,
      importance: fields[10] as String,
      state: fields[11] as bool,
      timeMade: fields[12] as DateTime,
      timeFinished: fields[13] as DateTime?,
      timerLifetime: fields[14] as int,
      timerRepeated: fields[15] as int,
    );
  }

  @override
  void write(BinaryWriter writer, TimerEntity obj) {
    writer
      ..writeByte(16)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.folderId)
      ..writeByte(2)
      ..write(obj.externalSyncId)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.setTime)
      ..writeByte(5)
      ..write(obj.currentTime)
      ..writeByte(6)
      ..write(obj.type)
      ..writeByte(7)
      ..write(obj.mode)
      ..writeByte(8)
      ..write(obj.appearance)
      ..writeByte(9)
      ..write(obj.ringtone)
      ..writeByte(10)
      ..write(obj.importance)
      ..writeByte(11)
      ..write(obj.state)
      ..writeByte(12)
      ..write(obj.timeMade)
      ..writeByte(13)
      ..write(obj.timeFinished)
      ..writeByte(14)
      ..write(obj.timerLifetime)
      ..writeByte(15)
      ..write(obj.timerRepeated);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TimerEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
