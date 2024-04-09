import 'package:shared_preferences/shared_preferences.dart';

import '../helpers/service_locator.dart';
import '../routing/routes.dart';
import 'cache_values.dart';

class CacheHelper {
  static late SharedPreferences sharedPreferences;

  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static dynamic getData({
    required String key,
  }) {
    return sharedPreferences.get(key);
  }

  static bool isEnglish() => getCurrentLanguage() == "en";

  static String initialRoute() {
    return getIt.get<SharedPreferences>().getBool(CacheKeys.getStarted) == true
        ? getIt.get<SharedPreferences>().get(CacheKeys.userToken) == null
            ? Routes.loginScreen
            : Routes.mainLayoutScreen
        : Routes.getStartRoute;
  }

  static void changeLanguageToEn() async {
    await CacheHelper.saveData(key: CacheKeys.currentLanguage, value: "en");
  }

  static bool isLoggedIn() {
    return CacheHelper.getData(key: CacheKeys.uId) != null;
  }

  static String getCurrentLanguage() {
    // print(CacheHelper.getData( key: CacheKeys.currentLanguage,));
    return CacheHelper.getData(
          key: CacheKeys.currentLanguage,
        ) ??
        "en";
  }

  static void changeLanguageToAr() async {
    await CacheHelper.saveData(key: CacheKeys.currentLanguage, value: "ar");
  }

  static Future<bool> saveData({
    required String key,
    required dynamic value,
  }) async {
    if (value is String) return await sharedPreferences.setString(key, value);
    if (value is int) return await sharedPreferences.setInt(key, value);
    if (value is bool) return await sharedPreferences.setBool(key, value);

    return await sharedPreferences.setDouble(key, value);
  }

  static Future<bool> removeData({
    required String key,
  }) async {
    return await sharedPreferences.remove(key);
  }

  static Future<bool> clearAllData() async {
    return await sharedPreferences.clear();
  }
}
