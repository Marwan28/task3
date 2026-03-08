import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class CacheHelper {
  static final FlutterSecureStorage storage = const FlutterSecureStorage();

  static Future<void> setSecureData({
    required String key,
    required String value,
  }) async {
    await storage.write(key: key, value: value);
  }

  static Future<String?> getSecureData({required String key}) async {
    return await storage.read(key: key);
  }

  static Future<void> deleteSecureData({required String key}) async {
    await storage.delete(key: key);
  }

  static Future<void> deleteAllSecureData() async {
    await storage.deleteAll();
  }

  static Future<bool> containsKey({required String key}) async {
    return await storage.containsKey(key: key);
  }

  static Future<Map<String, String>> getAllSecureData() async {
    return await storage.readAll();
  }
}
