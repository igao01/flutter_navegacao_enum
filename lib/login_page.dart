import 'package:enum_pages/store_page_manager.dart';
import 'package:flutter/material.dart';

import 'dto.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final store = StorePageManager();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: Text('Cadastrar'),
              onPressed: () => store.changePage(Telas.registerPage, context),
            ),
            ElevatedButton(
              child: Text('HomePage'),
              onPressed: () => store.changePage(Telas.homePage, context),
            ),
          ],
        ),
      ),
    );
  }
}
