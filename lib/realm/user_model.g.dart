// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class UserModel extends _UserModel
    with RealmEntity, RealmObjectBase, RealmObject {
  UserModel(
    ObjectId id,
    String name, {
    String? email,
    DateTime? addDate,
  }) {
    RealmObjectBase.set(this, '_id', id);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'email', email);
    RealmObjectBase.set(this, 'addDate', addDate);
  }

  UserModel._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, '_id') as ObjectId;
  @override
  set id(ObjectId value) => RealmObjectBase.set(this, '_id', value);

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  String? get email => RealmObjectBase.get<String>(this, 'email') as String?;
  @override
  set email(String? value) => RealmObjectBase.set(this, 'email', value);

  @override
  DateTime? get addDate =>
      RealmObjectBase.get<DateTime>(this, 'addDate') as DateTime?;
  @override
  set addDate(DateTime? value) => RealmObjectBase.set(this, 'addDate', value);

  @override
  Stream<RealmObjectChanges<UserModel>> get changes =>
      RealmObjectBase.getChanges<UserModel>(this);

  @override
  UserModel freeze() => RealmObjectBase.freezeObject<UserModel>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(UserModel._);
    return const SchemaObject(ObjectType.realmObject, UserModel, 'Users', [
      SchemaProperty('id', RealmPropertyType.objectid, mapTo: '_id'),
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('email', RealmPropertyType.string, optional: true),
      SchemaProperty('addDate', RealmPropertyType.timestamp, optional: true),
    ]);
  }
}
