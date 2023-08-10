import 'dart:convert';
import 'package:get/get.dart';
import 'package:nationalquiz/core/enums/data_type.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferanceRepository {
  SharedPreferences globalSharedPrefs = Get.find();
  String PREF_FIRST_LANUCH = 'first_lanuch';
  String PREF_LOGGED_IN = 'logged_in';
  String PREF_APP_LANG = 'app_language';
  String PREF_CART_LIST = 'cart_list';
  String PREF_ORDER_PLACED = 'order_placed';
  String PREF_SUB_STATUS = 'sub_status';

  setSubStatus(bool value) {
    setPrefrance(
      dataType: DataType.BOOL,
      key: PREF_SUB_STATUS,
      value: value,
    );
  }

  bool getSubStatus() {
    if (globalSharedPrefs.containsKey(PREF_SUB_STATUS)) {
      return getPrefrance(key: PREF_SUB_STATUS);
    } else {
      return true;
    }
  }

  setFirstLunch(bool value) {
    setPrefrance(
      dataType: DataType.BOOL,
      key: PREF_FIRST_LANUCH,
      value: value,
    );
  }

  bool getFirstLunch() {
    if (globalSharedPrefs.containsKey(PREF_FIRST_LANUCH)) {
      return getPrefrance(key: PREF_FIRST_LANUCH);
    } else {
      return true;
    }
  }

  setLoggedIN(bool value) {
    setPrefrance(
      dataType: DataType.BOOL,
      key: PREF_LOGGED_IN,
      value: value,
    );
  }

  bool getLoggedIN() {
    if (globalSharedPrefs.containsKey(PREF_LOGGED_IN)) {
      return getPrefrance(key: PREF_LOGGED_IN);
    } else {
      return false;
    }
  }

  setOrderPlaced(bool value) {
    setPrefrance(
      dataType: DataType.BOOL,
      key: PREF_ORDER_PLACED,
      value: value,
    );
  }

  bool getOrderPlaced() {
    if (globalSharedPrefs.containsKey(PREF_ORDER_PLACED)) {
      return getPrefrance(key: PREF_ORDER_PLACED);
    } else {
      return false;
    }
  }

  String PREF_TOKEN_INFO = 'token_info';

  setAppLanguage(String value) {
    setPrefrance(
      dataType: DataType.STRING,
      key: PREF_APP_LANG,
      value: value,
    );
  }

  String getAppLanguage() {
    if (globalSharedPrefs.containsKey(PREF_APP_LANG)) {
      return getPrefrance(key: PREF_APP_LANG);
    } else {
      return 'en';
    }
  }

  setPrefrance(
      {required DataType dataType,
      required String key,
      required dynamic value}) async {
    switch (dataType) {
      case DataType.INT:
        await globalSharedPrefs.setInt(key, value);
        break;
      case DataType.BOOL:
        await globalSharedPrefs.setBool(key, value);
        break;
      case DataType.STRING:
        await globalSharedPrefs.setString(key, value);
        break;
      case DataType.DOUBLE:
        await globalSharedPrefs.setDouble(key, value);
        break;
      case DataType.LISTSTRING:
        await globalSharedPrefs.setStringList(key, value);
        break;
    }
  }

  dynamic getPrefrance({required String key}) {
    return globalSharedPrefs.get(key);
  }
}
