import 'package:realm/realm.dart';

part 'user_model.g.dart';

@RealmModel()
@MapTo("Users")
class _UserModel {
  @MapTo("_id")
  late ObjectId id;
  late String name;
  late String? email;
  late DateTime? addDate;
}
