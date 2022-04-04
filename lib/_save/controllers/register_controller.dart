import 'package:flutter/cupertino.dart';

class RegisterController extends ChangeNotifier {
  static RegisterController instance = RegisterController();

  var name = '';
  var email = '';
  var password = '';
  var confirmPassword = '';
  var height = '';
  var weight = '';

  register(context) {
    print('name: $name');
    print('email: $email');
    print('password: $password');
    print('confirmPassword: $confirmPassword');
    print('height: $height');
    print('weight: $weight');
  }
}
