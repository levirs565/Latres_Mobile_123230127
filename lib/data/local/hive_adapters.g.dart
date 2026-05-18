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

class LocalRecipeAdapter extends TypeAdapter<LocalRecipe> {
  @override
  final typeId = 2;

  @override
  LocalRecipe read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LocalRecipe(
      id: fields[0] as String,
      meal: fields[1] as String,
      mealThumb: fields[2] as String,
      area: fields[3] as String?,
      country: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, LocalRecipe obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.meal)
      ..writeByte(2)
      ..write(obj.mealThumb)
      ..writeByte(3)
      ..write(obj.area)
      ..writeByte(4)
      ..write(obj.country);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocalRecipeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
