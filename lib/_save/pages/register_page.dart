import 'package:waterlife_pro/controllers/login_controller.dart';
import 'package:waterlife_pro/controllers/register_controller.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

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
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: TextField(
                onChanged: (value) => RegisterController.instance.name = value,
                decoration: const InputDecoration(
                  labelText: 'Nome',
                  border: OutlineInputBorder(),
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: TextField(
                onChanged: (value) => RegisterController.instance.email = value,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: TextField(
                onChanged: (value) =>
                    RegisterController.instance.password = value,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder(),
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: TextField(
                onChanged: (value) =>
                    RegisterController.instance.confirmPassword = value,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Confirme a senha',
                  border: OutlineInputBorder(),
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          onChanged: (value) =>
                              RegisterController.instance.height = value,
                          decoration: const InputDecoration(
                            labelText: 'Altura (m)',
                            border: OutlineInputBorder(),
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          onChanged: (value) =>
                              RegisterController.instance.weight = value,
                          decoration: const InputDecoration(
                            labelText: 'Peso (kg)',
                            border: OutlineInputBorder(),
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextButton(
                onPressed: () {
                  RegisterController.instance.register(context);
                },
                child: const Text('Registrar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
