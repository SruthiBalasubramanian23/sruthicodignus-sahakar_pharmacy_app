import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:sahakar_pharmacy/src/presentation/login/models/loginmodel.dart';
import 'package:sahakar_pharmacy/src/utils/pref_resources.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginRepository {
  final Dio client;

  LoginRepository({required this.client});
  
  // Future fetchLoginApiWithStoredCredentials() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   String? username = prefs.getString(PrefResources.LOGIN_NAME);
  //   String? password = prefs.getString(PrefResources.LOGIN_PASSWORD);
   

  //   if (username != null && password != null) {
  //     return await fetchLoginApi(username, password);
  //   } else {
  //     throw Exception("No stored credentials found");
  //   }
  // }

  Future fetchLoginApi(String userId, String password) async {
    try {
      String url =
          'http://20.219.78.180:5005/api/UserLogin/login?OnlineUserId=$userId&OnlineUserPswd=$password';

      final response = await client.get(
        url,
        options: Options(
          headers: <String, dynamic>{
            "Content-Type": "application/json",
          },
        ),
      );
      log("login response => ${response.data} status code => ${response.statusCode}");
      if (response.statusCode == 200) {
        
        return LoginModel.fromJson(response.data);
      }
    } catch (e) {
      log("login repo error => $e");
    }
  }
}

// import 'dart:convert';
// import 'dart:developer';
// import 'package:dio/dio.dart';
// import 'package:sahakar_pharmacy/src/presentation/login/models/loginmodel.dart';

// class LoginRepository {
//   final Dio client;

//   LoginRepository({required this.client});

//   Future<dynamic> fetchLoginApi(String userId, String password) async {
//     String? error;
//     try {
//       var url = "http://20.219.78.180:5005/api/UserLogin/login?OnlineUserId=$userId&OnlineUserPswd=$password";
//       log("url===$url");
//       final response = await client.get((url));
//       if (response.statusCode == 200 ) {
//         log("loginresp ${response.data}");

//         error = response.data.toString();
//         LoginModel? loginData;
//         loginData = LoginModel.fromJson(jsonDecode(response.data)[0]);
//         if (loginData != null) {
//           String user = jsonEncode(loginData);
//           log(" encode of login $user ");
//           return loginData;
//         }
//         return log("error ");
//       }
//     } catch (e) {
//       if (error != null) {
//         log("loginresperror2 $error");

//         return error;
//       }
//       return "$e";
//     }
//   }
// }
