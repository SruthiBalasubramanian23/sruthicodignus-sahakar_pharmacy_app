import 'package:sahakar_pharmacy/src/utils/pref_resources.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  static Future<bool> isAuthenticated() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? username = prefs.getString(PrefResources.LOGIN_NAME);
    return username != null; 
  }
   static Future<void> logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(PrefResources.LOGIN_NAME);
    
}
}