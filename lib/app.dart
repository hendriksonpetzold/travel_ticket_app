import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/domain/config/routes.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Colors.grey[600],
        ),
      ),
      getPages: Routes.routes,
    );
  }
}
