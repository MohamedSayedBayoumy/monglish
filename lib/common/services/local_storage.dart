import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureLocalStorage {
  static const FlutterSecureStorage storage = FlutterSecureStorage();

  

  static Future<void> writeSecureData(String key, String value) async {
    await storage.write(key: key, value: value);
  }

  static Future<String> readSecureData(String key) async {
    String value = await storage.read(key: key) ?? 'No data found!';

    return value;
  }

  static deleteSecureData(String key) async {
    await storage.delete(key: key);
  }

  static deleteAllSecureData() async {
    await storage.deleteAll();
  }
}
