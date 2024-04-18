import 'package:flutter_bloc/flutter_bloc.dart';

// Define AuthStates
abstract class AuthStates {}

class AuthInitial extends AuthStates {}

class AuthLoading extends AuthStates {}

class Authenticated extends AuthStates {}

class AuthError extends AuthStates {
  final String errorMessage;

  AuthError(this.errorMessage);
}

// Define AuthCubit
class AuthCubit extends Cubit<AuthStates> {
  AuthCubit() : super(AuthInitial());

  Future<void> registerUser({
    required String fullname,
    required String phone,
    required String email,
    required String password,
  }) async {
    try {
      // Perform registration logic (e.g., call API to register user)
      // Simulated registration delay
      emit(AuthLoading());
      await Future.delayed(Duration(seconds: 2)); // Simulated API call

      // Assume registration is successful
      emit(Authenticated());
    } catch (e) {
      // Handle registration failure
      emit(AuthError('Registration failed. Please try again.'));
    }
  }
}
