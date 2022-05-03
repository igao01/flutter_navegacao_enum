import 'package:enum_pages/store_page_manager.dart';
import 'package:flutter/material.dart';

import 'dto.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);

  final store = StorePageManager();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastrar'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: Text('Login'),
              onPressed: () => store.changePage(Telas.loginPage, context),
            ),
          ],
        ),
      ),
    );
  }
}
