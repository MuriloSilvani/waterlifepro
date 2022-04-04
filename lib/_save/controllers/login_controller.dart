import 'package:flutter/cupertino.dart';

class LoginController extends ChangeNotifier {
  static LoginController instance = LoginController();

  var email = '';
  var password = '';

  login(context) {
    Navigator.of(context).pushNamedAndRemoveUntil('/home', (r) => false);
  }

  logout(context) {
    email = '';
    password = '';
    Navigator.of(context).pushNamedAndRemoveUntil('/', (r) => false);
  }
}
