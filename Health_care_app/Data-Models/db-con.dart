import 'package:mongo_dart/mongo_dart.dart';

Future<void> main() async {
  final db = Db('mongodb://localhost:27017/my_database');
  await db.open();

  // You can use the 'db' object to interact with your MongoDB database.
}
