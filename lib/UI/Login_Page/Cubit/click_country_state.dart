part of 'click_country_cubit.dart';

@immutable
abstract class ClickCountryState {}

class ClickCountryInitial extends ClickCountryState {}

class Click extends ClickCountryState {}

class LoginLoading extends ClickCountryState {}

class LoginLoaded extends ClickCountryState {
  final LoginRespons loginRespons;

  LoginLoaded(this.loginRespons);
}

class LoginError extends ClickCountryState {}
