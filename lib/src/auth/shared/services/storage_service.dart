import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  static const _tokenKey = 'auth_token';

  final _secureStorage = const FlutterSecureStorage();
  SharedPreferences? _prefs;

  Future<void> saveToken(String token) async {
    if (kIsWeb) {
      _prefs ??= await SharedPreferences.getInstance();
      await _prefs!.setString(_tokenKey, token);
    } else {
      await _secureStorage.write(key: _tokenKey, value: token);
    }
  }

  Future<String?> getToken() async {
    if (kIsWeb) {
      _prefs ??= await SharedPreferences.getInstance();
      return _prefs!.getString(_tokenKey);
    } else {
      return await _secureStorage.read(key: _tokenKey);
    }
  }

  Future<void> deleteToken() async {
    if (kIsWeb) {
      _prefs ??= await SharedPreferences.getInstance();
      await _prefs!.remove(_tokenKey);
    } else {
      await _secureStorage.delete(key: _tokenKey);
    }
  }
}
