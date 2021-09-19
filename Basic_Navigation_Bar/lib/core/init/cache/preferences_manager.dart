import '../../constants/preferences_keys.dart';
/*
// eager singleton
class PreferencesManager {
  SharedPreferences _preferences;
  static PreferencesManager _instance = PreferencesManager._init();

  static PreferencesManager get instance => _instance;

  PreferencesManager._init() {
    SharedPreferences.getInstance().then((value) {
      _preferences = value;
    });
  }

  static preferencesInit() async {
    if (instance._preferences == null) {
      instance._preferences = await SharedPreferences.getInstance();
    }
    return;
  }

  Future<void> setStringValue(PreferencesKeys key, String value) async {
    await _preferences.setString(key.toString(), value);
  }

  String? getStringValue(PreferencesKeys key) =>
      _preferences.getString(key.toString());

  void clear() {
    _preferences.clear();
  }
}
*/