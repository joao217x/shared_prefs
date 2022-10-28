import 'package:api_service/features/home/controller/currencies_store.dart';
import 'package:api_service/main.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final currenciesStore = getIt<CurrenciesStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                currenciesStore.getCurrency();
              },
              child: const Text('GET'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('POST'),
            ),
            Row(
              children: [
                const Text('Modo Offline'),
                Switch(
                  value: currenciesStore.isOffline,
                  onChanged: (value) {
                    currenciesStore.setOfflineMode(value);
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
