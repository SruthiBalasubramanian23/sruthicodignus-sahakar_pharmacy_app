import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:sahakar_pharmacy/src/presentation/login/cubit/login_cubit.dart';
import 'package:sahakar_pharmacy/src/presentation/login/repository/login_repository.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<LoginRepository>(LoginRepository(client: getIt<Dio>()));
  getIt.registerSingleton<LoginCubit>(LoginCubit(loginRepository: getIt<LoginRepository>()));
}   