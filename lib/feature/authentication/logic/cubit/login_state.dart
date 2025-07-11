import 'package:meta/meta.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class LoginLoading extends LoginState {}

final class LoginSuccess extends LoginState {}

final class LoginError extends LoginState {
  final String error;

  LoginError({required this.error});

  @override
  String toString() => 'LoginError: $error';
}
