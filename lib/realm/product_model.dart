import 'package:realm/realm.dart';
part 'product_model.g.dart';

@RealmModel()
@MapTo("Products")
class _Product {
  @PrimaryKey()
  @MapTo("_id")
  late ObjectId id;
  late String name;
  late String? price;
  late DateTime? addDate;
}
