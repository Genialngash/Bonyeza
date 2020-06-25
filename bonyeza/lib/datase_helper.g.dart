// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datase_helper.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class SafaricomUssd extends DataClass implements Insertable<SafaricomUssd> {
  final int id;
  final String dialNumber;
  final String dialName;
  SafaricomUssd({@required this.id, this.dialNumber, this.dialName});
  factory SafaricomUssd.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return SafaricomUssd(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      dialNumber: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}dial_number']),
      dialName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}dial_name']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || dialNumber != null) {
      map['dial_number'] = Variable<String>(dialNumber);
    }
    if (!nullToAbsent || dialName != null) {
      map['dial_name'] = Variable<String>(dialName);
    }
    return map;
  }

  SafaricomUssdsCompanion toCompanion(bool nullToAbsent) {
    return SafaricomUssdsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      dialNumber: dialNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(dialNumber),
      dialName: dialName == null && nullToAbsent
          ? const Value.absent()
          : Value(dialName),
    );
  }

  factory SafaricomUssd.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return SafaricomUssd(
      id: serializer.fromJson<int>(json['id']),
      dialNumber: serializer.fromJson<String>(json['dialNumber']),
      dialName: serializer.fromJson<String>(json['dialName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'dialNumber': serializer.toJson<String>(dialNumber),
      'dialName': serializer.toJson<String>(dialName),
    };
  }

  SafaricomUssd copyWith({int id, String dialNumber, String dialName}) =>
      SafaricomUssd(
        id: id ?? this.id,
        dialNumber: dialNumber ?? this.dialNumber,
        dialName: dialName ?? this.dialName,
      );
  @override
  String toString() {
    return (StringBuffer('SafaricomUssd(')
          ..write('id: $id, ')
          ..write('dialNumber: $dialNumber, ')
          ..write('dialName: $dialName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(id.hashCode, $mrjc(dialNumber.hashCode, dialName.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is SafaricomUssd &&
          other.id == this.id &&
          other.dialNumber == this.dialNumber &&
          other.dialName == this.dialName);
}

class SafaricomUssdsCompanion extends UpdateCompanion<SafaricomUssd> {
  final Value<int> id;
  final Value<String> dialNumber;
  final Value<String> dialName;
  const SafaricomUssdsCompanion({
    this.id = const Value.absent(),
    this.dialNumber = const Value.absent(),
    this.dialName = const Value.absent(),
  });
  SafaricomUssdsCompanion.insert({
    this.id = const Value.absent(),
    this.dialNumber = const Value.absent(),
    this.dialName = const Value.absent(),
  });
  static Insertable<SafaricomUssd> custom({
    Expression<int> id,
    Expression<String> dialNumber,
    Expression<String> dialName,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (dialNumber != null) 'dial_number': dialNumber,
      if (dialName != null) 'dial_name': dialName,
    });
  }

  SafaricomUssdsCompanion copyWith(
      {Value<int> id, Value<String> dialNumber, Value<String> dialName}) {
    return SafaricomUssdsCompanion(
      id: id ?? this.id,
      dialNumber: dialNumber ?? this.dialNumber,
      dialName: dialName ?? this.dialName,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (dialNumber.present) {
      map['dial_number'] = Variable<String>(dialNumber.value);
    }
    if (dialName.present) {
      map['dial_name'] = Variable<String>(dialName.value);
    }
    return map;
  }
}

class $SafaricomUssdsTable extends SafaricomUssds
    with TableInfo<$SafaricomUssdsTable, SafaricomUssd> {
  final GeneratedDatabase _db;
  final String _alias;
  $SafaricomUssdsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _dialNumberMeta = const VerificationMeta('dialNumber');
  GeneratedTextColumn _dialNumber;
  @override
  GeneratedTextColumn get dialNumber => _dialNumber ??= _constructDialNumber();
  GeneratedTextColumn _constructDialNumber() {
    return GeneratedTextColumn(
      'dial_number',
      $tableName,
      true,
    );
  }

  final VerificationMeta _dialNameMeta = const VerificationMeta('dialName');
  GeneratedTextColumn _dialName;
  @override
  GeneratedTextColumn get dialName => _dialName ??= _constructDialName();
  GeneratedTextColumn _constructDialName() {
    return GeneratedTextColumn(
      'dial_name',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, dialNumber, dialName];
  @override
  $SafaricomUssdsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'safaricom_ussds';
  @override
  final String actualTableName = 'safaricom_ussds';
  @override
  VerificationContext validateIntegrity(Insertable<SafaricomUssd> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('dial_number')) {
      context.handle(
          _dialNumberMeta,
          dialNumber.isAcceptableOrUnknown(
              data['dial_number'], _dialNumberMeta));
    }
    if (data.containsKey('dial_name')) {
      context.handle(_dialNameMeta,
          dialName.isAcceptableOrUnknown(data['dial_name'], _dialNameMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SafaricomUssd map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return SafaricomUssd.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $SafaricomUssdsTable createAlias(String alias) {
    return $SafaricomUssdsTable(_db, alias);
  }
}

class AirtelUssd extends DataClass implements Insertable<AirtelUssd> {
  final int id;
  final String dialNumber;
  final String dialName;
  AirtelUssd({@required this.id, this.dialNumber, this.dialName});
  factory AirtelUssd.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return AirtelUssd(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      dialNumber: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}dial_number']),
      dialName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}dial_name']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || dialNumber != null) {
      map['dial_number'] = Variable<String>(dialNumber);
    }
    if (!nullToAbsent || dialName != null) {
      map['dial_name'] = Variable<String>(dialName);
    }
    return map;
  }

  AirtelUssdsCompanion toCompanion(bool nullToAbsent) {
    return AirtelUssdsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      dialNumber: dialNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(dialNumber),
      dialName: dialName == null && nullToAbsent
          ? const Value.absent()
          : Value(dialName),
    );
  }

  factory AirtelUssd.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return AirtelUssd(
      id: serializer.fromJson<int>(json['id']),
      dialNumber: serializer.fromJson<String>(json['dialNumber']),
      dialName: serializer.fromJson<String>(json['dialName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'dialNumber': serializer.toJson<String>(dialNumber),
      'dialName': serializer.toJson<String>(dialName),
    };
  }

  AirtelUssd copyWith({int id, String dialNumber, String dialName}) =>
      AirtelUssd(
        id: id ?? this.id,
        dialNumber: dialNumber ?? this.dialNumber,
        dialName: dialName ?? this.dialName,
      );
  @override
  String toString() {
    return (StringBuffer('AirtelUssd(')
          ..write('id: $id, ')
          ..write('dialNumber: $dialNumber, ')
          ..write('dialName: $dialName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(id.hashCode, $mrjc(dialNumber.hashCode, dialName.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is AirtelUssd &&
          other.id == this.id &&
          other.dialNumber == this.dialNumber &&
          other.dialName == this.dialName);
}

class AirtelUssdsCompanion extends UpdateCompanion<AirtelUssd> {
  final Value<int> id;
  final Value<String> dialNumber;
  final Value<String> dialName;
  const AirtelUssdsCompanion({
    this.id = const Value.absent(),
    this.dialNumber = const Value.absent(),
    this.dialName = const Value.absent(),
  });
  AirtelUssdsCompanion.insert({
    this.id = const Value.absent(),
    this.dialNumber = const Value.absent(),
    this.dialName = const Value.absent(),
  });
  static Insertable<AirtelUssd> custom({
    Expression<int> id,
    Expression<String> dialNumber,
    Expression<String> dialName,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (dialNumber != null) 'dial_number': dialNumber,
      if (dialName != null) 'dial_name': dialName,
    });
  }

  AirtelUssdsCompanion copyWith(
      {Value<int> id, Value<String> dialNumber, Value<String> dialName}) {
    return AirtelUssdsCompanion(
      id: id ?? this.id,
      dialNumber: dialNumber ?? this.dialNumber,
      dialName: dialName ?? this.dialName,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (dialNumber.present) {
      map['dial_number'] = Variable<String>(dialNumber.value);
    }
    if (dialName.present) {
      map['dial_name'] = Variable<String>(dialName.value);
    }
    return map;
  }
}

class $AirtelUssdsTable extends AirtelUssds
    with TableInfo<$AirtelUssdsTable, AirtelUssd> {
  final GeneratedDatabase _db;
  final String _alias;
  $AirtelUssdsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _dialNumberMeta = const VerificationMeta('dialNumber');
  GeneratedTextColumn _dialNumber;
  @override
  GeneratedTextColumn get dialNumber => _dialNumber ??= _constructDialNumber();
  GeneratedTextColumn _constructDialNumber() {
    return GeneratedTextColumn(
      'dial_number',
      $tableName,
      true,
    );
  }

  final VerificationMeta _dialNameMeta = const VerificationMeta('dialName');
  GeneratedTextColumn _dialName;
  @override
  GeneratedTextColumn get dialName => _dialName ??= _constructDialName();
  GeneratedTextColumn _constructDialName() {
    return GeneratedTextColumn(
      'dial_name',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, dialNumber, dialName];
  @override
  $AirtelUssdsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'airtel_ussds';
  @override
  final String actualTableName = 'airtel_ussds';
  @override
  VerificationContext validateIntegrity(Insertable<AirtelUssd> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('dial_number')) {
      context.handle(
          _dialNumberMeta,
          dialNumber.isAcceptableOrUnknown(
              data['dial_number'], _dialNumberMeta));
    }
    if (data.containsKey('dial_name')) {
      context.handle(_dialNameMeta,
          dialName.isAcceptableOrUnknown(data['dial_name'], _dialNameMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AirtelUssd map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return AirtelUssd.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $AirtelUssdsTable createAlias(String alias) {
    return $AirtelUssdsTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $SafaricomUssdsTable _safaricomUssds;
  $SafaricomUssdsTable get safaricomUssds =>
      _safaricomUssds ??= $SafaricomUssdsTable(this);
  $AirtelUssdsTable _airtelUssds;
  $AirtelUssdsTable get airtelUssds => _airtelUssds ??= $AirtelUssdsTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [safaricomUssds, airtelUssds];
}
