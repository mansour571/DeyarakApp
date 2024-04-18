abstract class AuthStates {}

class AuthinitState extends AuthStates {}

class RegLoadingState extends AuthStates {}

class RegSuccessState extends AuthStates {}

class RegFalureState extends AuthStates {
  String message;
  RegFalureState({required this.message});
}
