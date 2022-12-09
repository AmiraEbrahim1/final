// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loginhiveAdapter.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveLoginModelAdapter extends TypeAdapter<HiveLoginModel> {
  @override
  final int typeId = 0;

  @override
  HiveLoginModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveLoginModel(
      user: fields[0] as HiveUserModel?,
      token: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, HiveLoginModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.user)
      ..writeByte(1)
      ..write(obj.token);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveLoginModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
