import '../screens/home/bindings.dart';
import '../values/routes.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AWS Practice',
      initialRoute: AppRoutes.home,
      initialBinding: HomeBindings(),
      getPages: AppPages.pages,
      localizationsDelegates: const [FormBuilderLocalizations.delegate],
    );
  }
}
