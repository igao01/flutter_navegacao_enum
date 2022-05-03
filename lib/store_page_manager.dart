import 'package:enum_pages/login_page.dart';
import 'package:enum_pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import 'dto.dart';
import 'home_page.dart';

part 'store_page_manager.g.dart';

class StorePageManager = StorePageManagerBase with _$StorePageManager;

abstract class StorePageManagerBase with Store {
  Telas tela = Telas.loginPage;

  changePage(Telas tela, BuildContext context) {
    switch (tela) {
      case Telas.loginPage:
        openLogin(context);
        break;

      case Telas.homePage:
        openHomePage(context);
        break;
      case Telas.registerPage:
        openRegisterPage(context);
        break;
    }
  }

  void openLogin(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => LoginPage(),
      ),
    );
  }

  void openHomePage(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => HomePage(),
      ),
    );
  }

  void openRegisterPage(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => RegisterPage(),
      ),
    );
  }
}
