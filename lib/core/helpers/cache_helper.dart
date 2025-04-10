import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class CacheHelper {
  static late FlutterSecureStorage _storage;

  static init() {
    _storage = const FlutterSecureStorage();
  }

  //----------------------------------------------------------------------------
  static Future<dynamic> getData({required String key}) async {
    return await _storage.read(key: key);
  }

  //----------------------------------------------------------------------------
  static Future<void> saveData({
    required String key,
    required dynamic value,
  }) async {
    await _storage.write(key: key, value: value);
  }

  //----------------------------------------------------------------------------

  static Future<void> removeData({required String key}) async {
    await _storage.delete(key: key);
  }
}
