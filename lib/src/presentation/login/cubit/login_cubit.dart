import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:sahakar_pharmacy/src/presentation/login/models/loginmodel.dart';
import 'package:sahakar_pharmacy/src/presentation/login/repository/login_repository.dart';
import 'package:sahakar_pharmacy/src/utils/pref_resources.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({required this.loginRepository}) : super(LoginInitial());
  final LoginRepository loginRepository;

  Future<void> _saveCredentials(
    String username,
    String password,
  ) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setString(PrefResources.LOGIN_NAME, username);
    await prefs.setString(PrefResources.LOGIN_PASSWORD, password);
  }

  loginfun(String userId, String password) async {
    emit(LoginInitial());
    emit(LoginLoading());
    try {
      final response = await loginRepository.fetchLoginApi(userId, password);

      await _saveCredentials(userId, password);

      emit(LoginLoaded(loginModel: response));
      final sp=await SharedPreferences.getInstance();
      sp.setString(PrefResources.CITY, response.data!.city??'');
      sp.setString(PrefResources.PHARMAMEDICALS, response.data!.name);
      
    } catch (e) {
      debugPrint(e.toString());
      emit(LoginError(message: "Error: $e"));
    }
  }
}
