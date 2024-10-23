import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:link_up/_common/data/data_controller.dart';
import 'package:link_up/_servies/theme_services/c_theme_controller.dart';
import 'package:link_up/modules/gateway/v_gateway.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.delayed(const Duration(seconds: 1));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    injectDependencies();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Link Up!',
      useInheritedMediaQuery: true,
      locale: const Locale('en', 'EN'),
      fallbackLocale: const Locale('en', 'US'),
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const GatewayPage(),
    );
  }

  void injectDependencies() {
    Get.put(DataController());
    Get.put(ThemeController());
  }
}
