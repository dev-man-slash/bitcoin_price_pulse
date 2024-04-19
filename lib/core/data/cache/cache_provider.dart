// import 'dart:async';
//
// import 'package:shared_preferences/shared_preferences.dart';
//
// class CacheProvider {
//   late SharedPreferences _prefs;
//
//   CacheProvider._internal();
//
//   static final CacheProvider _singleton = CacheProvider._internal();
//
//   factory CacheProvider() {
//     return _singleton;
//   }
//
//   void setLoginStatus() async {
//     _prefs = await SharedPreferences.getInstance();
//     await _prefs.setBool('login_status', true);
//   }
//
//   void setUserToken(String token) async {
//     _prefs = await SharedPreferences.getInstance();
//     await _prefs.setString('token', token);
//   }
//
//   void setUserId(String userId) async {
//     _prefs = await SharedPreferences.getInstance();
//     await _prefs.setString('user_id', userId);
//   }
//
//   void setUserPhoneNumber(String phoneNumber) async {
//     _prefs = await SharedPreferences.getInstance();
//     await _prefs.setString('phoneNumber', phoneNumber);
//   }
//
//   void setCities(List<String> cities) async {
//     _prefs = await SharedPreferences.getInstance();
//     await _prefs.setStringList('cities', cities);
//   }
//
//   Future<List<String>> getCities() async {
//     _prefs = await SharedPreferences.getInstance();
//     return Future.value(_prefs.getStringList('cities') ?? []);
//   }
//
//   void setSearchHistory(List<String> searchHistory) async {
//     _prefs = await SharedPreferences.getInstance();
//     await _prefs.setStringList('searchHistory', searchHistory);
//   }
//
//   Future<List<String>> getSearchHistory() async {
//     _prefs = await SharedPreferences.getInstance();
//     return Future.value(_prefs.getStringList('searchHistory') ?? []);
//   }
//
//   void setAdsId(List<String> ads) async {
//     _prefs = await SharedPreferences.getInstance();
//     await _prefs.setStringList('adsId', ads);
//   }
//
//   Future<List<String>> getAdsId() async {
//     _prefs = await SharedPreferences.getInstance();
//     return Future.value(_prefs.getStringList('adsId') ?? []);
//   }
//
//   void deleteAll() async {
//     _prefs = await SharedPreferences.getInstance();
//     await _prefs.setString('token', '');
//     await _prefs.setBool('login_status', false);
//   }
//
//   Future<bool> getLoginStatus() async {
//     _prefs = await SharedPreferences.getInstance();
//     return Future.value(_prefs.getBool('login_status') ?? false);
//   }
//
//   Future<String> getUserToken() async {
//     _prefs = await SharedPreferences.getInstance();
//     return Future.value(_prefs.getString('token') ?? '');
//   }
//
//   Future<String> getUserId() async {
//     _prefs = await SharedPreferences.getInstance();
//     return Future.value(_prefs.getString('user_id') ?? '0');
//   }
//
//   Future<String> getUserPhoneNumber() async {
//     _prefs = await SharedPreferences.getInstance();
//     return Future.value(_prefs.getString('phoneNumber'));
//   }
//
//   void setThemeMode(String themeMode) async {
//     _prefs = await SharedPreferences.getInstance();
//     await _prefs.setString('theme_mode', themeMode);
//   }
//
//   Future<String> getThemeMode() async {
//     _prefs = await SharedPreferences.getInstance();
//     return Future.value(_prefs.getString('theme_mode') ?? '');
//   }
//
//   void setMyCity(String city) async {
//     _prefs = await SharedPreferences.getInstance();
//     await _prefs.setString('my_city', city);
//   }
//
//   Future<String> getMyCity() async {
//     _prefs = await SharedPreferences.getInstance();
//     return Future.value(_prefs.getString('my_city') ?? '');
//   }
//
//   void setLanguage(String lang) async {
//     _prefs = await SharedPreferences.getInstance();
//     await _prefs.setString('language', lang);
//   }
//
//   Future<String> getLanguage() async {
//     _prefs = await SharedPreferences.getInstance();
//     return Future.value(_prefs.getString('language') ?? 'en');
//   }
//
//
// }
