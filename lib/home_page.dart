import 'package:enum_pages/store_page_manager.dart';
import 'package:flutter/material.dart';

import 'dto.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final store = StorePageManager();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
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
    ;
  }
}
