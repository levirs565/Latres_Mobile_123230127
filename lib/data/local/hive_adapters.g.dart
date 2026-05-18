// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_adapters.dart';

// **************************************************************************
// AdaptersGenerator
// **************************************************************************

class LocalUserAdapter extends TypeAdapter<LocalUser> {
  @override
  final typeId = 1;

  @override
  LocalUser read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LocalUser(passwordHash: fields[0] as String);
  }

  @override
  void write(BinaryWriter writer, LocalUser obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.passwordHash);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocalUserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class LocalTVShowAdapter extends TypeAdapter<LocalTVShow> {
  @override
  final typeId = 3;

  @override
  LocalTVShow read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LocalTVShow(
      id: (fields[0] as num).toInt(),
      name: fields[1] as String,
      rating: (fields[2] as num).toDouble(),
      mediumImage: fields[3] as String,
      language: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, LocalTVShow obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.rating)
      ..writeByte(3)
      ..write(obj.mediumImage)
      ..writeByte(4)
      ..write(obj.language);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocalTVShowAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
