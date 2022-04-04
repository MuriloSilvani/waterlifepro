import 'package:waterlife_pro/controllers/login_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Waterlife PRO'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          LoginController.instance.logout(context);
        },
        child: const Icon(Icons.keyboard_return_sharp),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: const [
            WaterCard(),
            WaterCard(),
            WaterCard(),
            WaterCard(),
            WaterCard(),
            WaterCard(),
            WaterCard(),
            WaterCard(),
            WaterCard(),
            WaterCard(),
          ],
        ),
      ),
    );
  }
}

class WaterCard extends StatelessWidget {
  const WaterCard({Key? key}) : super(key: key);

  final quantity = 200;
  final time = '10:00';
  final drinked = false;
  final late = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: InkWell(
        onTap: () {
          print("Click event on Container");
        },
        child: Card(
          child: ListTile(
            leading: Icon(
              Icons.local_drink,
              size: 48,
              color: drinked
                  ? Colors.green
                  : late
                      ? Colors.red
                      : Colors.blue,
            ),
            title: Text('Beber água $time'),
            subtitle: Text('${quantity}ml'),
            trailing: Icon(drinked
                ? Icons.check
                : late
                    ? Icons.access_time
                    : null),
          ),
        ),
      ),
    );
  }
}
