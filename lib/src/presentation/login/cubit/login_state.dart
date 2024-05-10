part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class LoginLoading extends LoginState {}

final class LoginLoaded extends LoginState {
  final LoginModel loginModel;

  LoginLoaded({required this.loginModel});
}

class LoginError extends LoginState {
  final String message;

  LoginError({required this.message});
}
