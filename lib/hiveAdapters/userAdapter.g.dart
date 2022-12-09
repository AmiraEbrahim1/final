// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userAdapter.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveUserModelAdapter extends TypeAdapter<HiveUserModel> {
  @override
  final int typeId = 1;

  @override
  HiveUserModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveUserModel(
      uuid: fields[0] as String?,
      createdAt: fields[1] as String?,
      updatedAt: fields[2] as String?,
      email: fields[3] as String?,
      mobile: fields[4] as String?,
      password: fields[5] as String?,
      role: fields[6] as String?,
      monthlyRank: fields[7] as int?,
      seasonalRank: fields[8] as int?,
      credits: fields[9] as int?,
      plan: fields[10] as String?,
      active: fields[11] as bool?,
      parentName: fields[12] as String?,
      studentName: fields[13] as String?,
      verified: fields[14] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, HiveUserModel obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.uuid)
      ..writeByte(1)
      ..write(obj.createdAt)
      ..writeByte(2)
      ..write(obj.updatedAt)
      ..writeByte(3)
      ..write(obj.email)
      ..writeByte(4)
      ..write(obj.mobile)
      ..writeByte(5)
      ..write(obj.password)
      ..writeByte(6)
      ..write(obj.role)
      ..writeByte(7)
      ..write(obj.monthlyRank)
      ..writeByte(8)
      ..write(obj.seasonalRank)
      ..writeByte(9)
      ..write(obj.credits)
      ..writeByte(10)
      ..write(obj.plan)
      ..writeByte(11)
      ..write(obj.active)
      ..writeByte(12)
      ..write(obj.parentName)
      ..writeByte(13)
      ..write(obj.studentName)
      ..writeByte(14)
      ..write(obj.verified);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveUserModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
