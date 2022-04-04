import 'package:waterlife_pro/controllers/login_controller.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Icon(Icons.keyboard_return_sharp),
      ),
      body: const LoginForm(),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: TextField(
              onChanged: (value) => LoginController.instance.email = value,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: 'Email',
                hintText: 'email@email.com',
                border: OutlineInputBorder(),
                floatingLabelBehavior: FloatingLabelBehavior.auto,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: TextField(
              onChanged: (value) => LoginController.instance.password = value,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Senha',
                border: OutlineInputBorder(),
                floatingLabelBehavior: FloatingLabelBehavior.auto,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    LoginController.instance.login(context);
                  },
                  child: const Text('Entrar'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/register');
                  },
                  child: const Text('Registrar?'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
