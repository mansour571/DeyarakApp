import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:deyarakapp/Featurs/personalinformation/presentation/views/usernameview.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:http/http.dart' as http;
import 'package:deyarakapp/Featurs/register_screen/auth_cubit/auth_status.dart';

class AuthCubit extends Cubit<AuthStates> {
  AuthCubit() : super(AuthinitState());

  //reg
  void register(
      {required String fullName,
      required int num,
      required String Email,
      required String pass}) async {
    emit(RegLoadingState());
    Response response = (await http.post(Uri.parse(''), body: {
      'username': fullName,
      'phoneNum': num,
      'Email': Email,
      'Password': pass,
    })) as Response;
    var responseBody = jsonDecode(response.body);
    if (responseBody['status'] == true) {
      //emit success
      emit(RegSuccessState());
    } else {
      //emit falure
      emit(RegFalureState(message: responseBody['message']));
    }
  }
}
